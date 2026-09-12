import sys
from time import sleep
from py4j.java_gateway import GatewayClient, JavaGateway, java_import


def main(argv):
    client = GatewayClient(address="127.0.0.1", port=int(argv[1]))
    jgw = JavaGateway(client)
    java_import(jgw.jvm,"java.util.*")
    pisvc = jgw.entry_point
    while 1:
        sentences = readData(pisvc, argv[2], "dataIn")
        if sentences == None:
            break
        process(jgw,pisvc,argv[2],sentences)

def readData(pisvc, operatorId, portName):
    sentences = pisvc.readData(operatorId,portName)
    if sentences != None:
        sents = []
        sents.extend(sentences)
        return sents
    return None

def process(jgw, pisvc, operatorId, sentences):
    object_class = jgw.jvm.java.lang.Object
    float_class = jgw.jvm.float
    resultList = jgw.jvm.java.util.LinkedList()
    for sentence in sentences:
        data = processRow(sentence)
        row = jgw.new_array(object_class, len(output))
        for i in range(len(output)) :
          row[i] = data[output[i]["name"]]
        resultList.add(row)
    if len(output) > 0:
        pisvc.writeOut(operatorId, "dataOut", resultList)

@{pythonFragment}

if __name__ == "__main__":
   main(sys.argv)
