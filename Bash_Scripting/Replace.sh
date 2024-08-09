#!/bin/bash

# Step 2: Create and write to the file
cat <<EOL > sample.txt
This is the first line.
This is the second line.
This is the third line.
This is the fourth line.
Welcome to the fifth line.
Give me a chance to learn.
Welcome to the sixth line, give me more.
This is the seventh line.
Welcome, this is the eighth line to give more examples.
EOL

# Step 3: Replace 'give' with 'learning' from the 5th line onward in lines containing 'welcome'
sed -i '5,$ { /Welcome/ s/give/learning/g }' sample.txt

# Optional: Display the content of the file after modification
cat sample.txt
