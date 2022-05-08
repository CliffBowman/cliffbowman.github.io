import glob
import json

imageList = sorted(glob.glob("src/assets/house-projects-updated/*.jpg"))
newList = [{ "filename":i[34:], "description": None} for i in imageList]
# imageDict = dict.fromkeys(newList, { "description": None })

jj = json.dumps(newList, indent=4)
outputFile = open("src/assets/house-projects-updated/data.json", "w")
outputFile.write(jj)
print(jj)
