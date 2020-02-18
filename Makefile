#for dependency you want all tex files  but for acronyms you do not want to include the acronyms file itself.
txt=$(filter-out $(wildcard *acronyms.txt) , $(wildcard *.txt))  

all: acronyms.txt

acronyms.txt :$(txt) myacronyms.txt skipacronyms.txt
	generateAcronyms.py -t "OPS LSST" -n $(txt) 

