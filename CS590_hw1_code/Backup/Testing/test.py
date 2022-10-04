import os
import sys
from pathlib import Path


folders = Path().glob('*')
meanList =[]
extractedFolder="extracted"
for folder in folders:
    # print(folder)
    subfolders = Path(folder).glob('*/')
    for subfolder in folder:
        print(subfolder)
    #     with open(os.path.join(sys.path[0],file),"r") as f:
    #         data = [float(line.rstrip()) for line in f]
    #     lenData:float=len(data) if len(data)!=0 else 1
    #     mean = round(sum(data)/(lenData))
    #     meanList.append(mean)
    # print(*meanList)
    # converted_list = [str(element) for element in meanList]
    # print(",".join(converted_list))
    # meanList.clear()


