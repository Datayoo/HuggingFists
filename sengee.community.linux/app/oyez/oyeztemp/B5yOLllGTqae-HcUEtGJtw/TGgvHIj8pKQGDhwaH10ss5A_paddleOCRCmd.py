import sys
from time import sleep
from PIL import Image
from io import BytesIO
import numpy as np
from paddleocr import PaddleOCR
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
    if row != None:
        return row
    return None

def process(jgw, pisvc, operatorId, params, imgRow):
    object_class = jgw.jvm.java.lang.Object
    object_class = jgw.jvm.java.lang.Object
    float_class = jgw.jvm.float
    dataList = jgw.jvm.java.util.LinkedList()
    blockList = jgw.jvm.java.util.LinkedList()

    dictParams = dict(params)
    bytes_stream = BytesIO(imgRow[1])
    img = Image.open(bytes_stream)
    imgArray = np.array(img)
    regions, text = processRow(imgArray, imgRow[2], dictParams)
    for region in regions:
        row = jgw.new_array(object_class, 8)
        row[0] = imgRow[0]
        row[1] = region['feature']
        row[2] = region['prob']
        row[3] = region['startX']
        row[4] = region['startY']
        row[5] = region['endX']
        row[6] = region['endY']
        dataList.add(row)
    pisvc.writeOut(operatorId, "dataOut", dataList)
    row = jgw.new_array(object_class, 2)
    row[0] = imgRow[0]
    row[1] = text
    blockList.add(row)
    pisvc.writeOut(operatorId, "blockOut", blockList)

def processRow(imgArray, lang, dictParams):
    imageLang = lang
    if dictParams['columnMode']:
        imageLang = dictParams[imageLang]
    ocr = PaddleOCR(use_angle_cls=True, lang=imageLang, use_gpu=False)
    result = ocr.ocr(img=imgArray, cls=True)
    text = ""
    regions=[]
    for line in result:
        for term in line:
            cood = term[0]
            region = {'feature':term[1][0], 'prob':term[1][1], 'startX':cood[0][0], 'startY':cood[0][1], 'endX':cood[2][0], 'endY':cood[2][1]}
            regions.append(region)
            text+=term[1][0]
            text+='\n'
    return regions, text

if __name__ == "__main__":
   main(sys.argv)