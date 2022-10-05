import os
import sys

meanList =[]

dataFolder=""
for folders in os.scandir():
    if folders.is_dir():
        meanList.append(folders.name.split("-")[-1])
        for folder in os.scandir(folders):
            if folder.is_dir():
                for file in os.scandir(folder):
                    print(file.name.split("-")[-3])
                    if file.is_file() and file.name.split(".")[-1]=="txt":
                        with open(os.path.join(sys.path[0],dataFolder,folders.name,folder.name,file.name),"r") as f:
                            data = [float(line.rstrip()) for line in f]
                        lenData:float=len(data) if len(data)!=0 else 1
                        mean = round(sum(data)/(lenData))
                        meanList.append(mean)
    print(folders.name)
    converted_list = [str(element) for element in meanList] 
    print("\n".join(converted_list))
    meanList.clear()


