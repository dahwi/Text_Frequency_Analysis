import numpy as np
import re
import codecs

def readin(data, list):
	newlist = [word.lower() for word in list]
	freqTable = []
	with open(data, "r", encoding = 'utf-8') as fo:
		count = 0
		freq = 0
		#for each line, we split a line by words and store words in array
		for line in fo:
			a = re.compile("[ !\\.,\\?;\\-:\\(\\)\\\\]")
			newdata=a.split(line)
			temp = []
			#for each words in a line, we check to see if that word is same as any of the words in the list
			for val in newdata:
				val = val.lower()
				if count == 500:
					freqTable.append(freq)
					count = 0
					freq = 0
				count += 1
				if val in newlist:
					freq += 1
	return freqTable


data="fotr-fixed2.txt"
data2="twoTowers-fixed.txt"
data3="Returnfixed1.txt"
#list of words the program is counting
list = ["walk","walking","walked","run","runs","walks","ran","ride","rode","rides","journey","journeys","march","marches","marched","pace","paces","paced","speed","speeds","sped","stroll","strolls","strolled"]

#read through the book and count how many times the words in the list appear
#export the output in CSV file
output = open("result1.csv", "w")
output.write("pageNum, numOfOccur\n")
ans = readin(data, list)
counter = 1
for i in ans: 
	output.write(str(counter)+","+str(i)+"\n")
	counter += 1
	
output2 = open("result2.csv", "w")
output2.write("pageNum, numOfOccur\n")
ans2 = readin(data2, list)
counter = 1
for i in ans2: 
	output2.write(str(counter)+","+str(i)+"\n")
	counter += 1
	
output3 = open("result3.csv", "w")
output3.write("pageNum, numOfOccur\n")
ans3 = readin(data3, list)
counter = 1
for i in ans3: 
	output3.write(str(counter)+","+str(i)+"\n")
	counter += 1