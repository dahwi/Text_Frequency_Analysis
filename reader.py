import numpy as np
import re
import codecs

file = open("fotr.txt", "rt", encoding = "UTF8")
u = file.readlines()

for i in u:
	print(i)
	
#ans = dict()
freqTable = []
with open("fotr.txt","rt", encoding = "UTF-8") as fo:
	count = 0
	freq = 0
	for line in fo:
		if count == 20:
			count = 0
			freq = 0
		#split the sentence when there is space or new line
		count += 1
		a = re.compile("[ \n!\\.,\\?;\\-:\\(\\)\\\\]")
		newdata=a.split(line)
		for val in newdata:
			val = val.lower()
		if val == "walk" or val == "walked" or val == "walking":
				freq +=1
		freqTable.append(freq)
#print(freqTable)
