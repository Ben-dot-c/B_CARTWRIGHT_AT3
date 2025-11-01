
#!/bin/bash

read -p "Enter Filename: " file

if [[ -f "$file" ]]; then
	read -p "Enter text to search for: " text

	grep -i "$text" "$file" > pattern.txt #using grep to search the given text file and -i to make the input non case sensetive  
else
	echo "file not found"
fi
