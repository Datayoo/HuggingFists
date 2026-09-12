import sys, getopt
import json
import whisper
from py4j.java_gateway import GatewayClient, JavaGateway, java_import

def main(argv):
    client = GatewayClient(address="127.0.0.1", port=int(argv[1]))
    jgw = JavaGateway(client)
    java_import(jgw.jvm,"java.util.*")
    pisvc = jgw.entry_point
    params = pisvc.getRunningParameters(argv[2])
    while 1:
        row = readData(pisvc, argv[2], "streamIn")
        if row == None:
            break
        process(jgw, pisvc, argv[2], params, row)

def readData(pisvc, operatorId, portName):
    row = pisvc.readData(operatorId,portName)
    if bytes != None:
        return row
    return None

def process(jgw, pisvc, operatorId, params, file):
    object_class = jgw.jvm.java.lang.Object
    resultList = jgw.jvm.java.util.LinkedList()
    dictParams = dict(params)
    textDict = processRow(file, dictParams)
    text = ""
    for item in textDict:
        row = jgw.new_array(object_class, 6)
        if text != "":
            text += " "
        text += item['feature']
        row[0] = item['streamName']
        row[1] = item['feature']
        row[2] = item['prob']
        row[3] = item['startPos']
        row[4] = item['endPos']
        row[5] = item['metas']
        resultList.add(row)
    pisvc.writeOut(operatorId, "dataOut", resultList)
    pisvc.writeOut(operatorId, "blockOut", buildBlock(jgw, object_class, file, text))

def buildBlock(jgw, object_class, file, text):
    resultList = jgw.jvm.java.util.LinkedList()
    row = jgw.new_array(object_class, 6)
    row[0] = file
    row[1] = text
    resultList.add(row)
    return resultList

def processRow(file, dictParams):
    model = whisper.load_model("/home/datayoo/moo/whisper-small/small.pt")
    columnMode = dictParams.get('audioColumnMode')
    segments=[]
    lanPrompts = {"zh":"以下是普通话的句子。"}
    if columnMode:
        audioColumn = dictParams.get('audioLangColumn')
        result = model.transcribe(file[0], language=file[audioColumn], temperature=dictParams.get('temperature'), initial_prompt=lanPrompts[file[audioColumn]])
    else:
        result = model.transcribe(file, language=dictParams.get('audioLang'), temperature=dictParams.get('temperature'), initial_prompt=lanPrompts[dictParams.get('audioLang')])
    for segment in result['segments']:
        seg = {}
        out = {}
        seg['lang'] = result['language']
        out['streamName'] = file
        out['startPos'] = segment['start']
        out['prob'] = segment['avg_logprob']
        out['endPos'] = segment['end']
        out['feature'] = segment['text']
        out['metas'] = str(seg)
        segments.append(out)
    return segments

if __name__ == "__main__":
   main(sys.argv)