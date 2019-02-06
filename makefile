TARGET=README.md

all: create add-title add-date add-fileinfo

create:
	touch $(TARGET) 

add-title: 
	echo "# Title me, title me fully" > $(TARGET)

add-date: 
	echo "### It's a good time for run this script. Now is:    " >> $(TARGET)
	date +%D" "%T >> $(TARGET)

add-fileinfo: guessinggame.sh 
	echo "### The file you wonder about contains some lines. Number of lines:    " >> $(TARGET)
	wc -l guessinggame.sh | egrep "^[0-9]+"| sed s/[^0-9]//g >> $(TARGET)

clear:
	rm $(TARGET)
