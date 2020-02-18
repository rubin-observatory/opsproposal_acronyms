#for dependency you want all tex files  but for acronyms you do not want to include the acronyms file itself.
txt=$(filter-out $(wildcard *acronym.txt) , $(wildcard *.txt))  

all: acronyms.txt

acronyms.txt :$(txt) myacronyms.txt
	generateAcronyms.py -t "OPS LSST" -n $(txt) 

