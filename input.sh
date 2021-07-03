# SHELL BASICS

### USER INPUT
```
read -p "Enter your name: " NAME
echo "Hello $NAME, Nice to meet you!"
```
### IF_ELSE
```
if [ "$NAME" == "Hasan" ]
then
    echo "Your name is Hasan"
elif [ "$NAME" == "Bagdad" ]
then
    echo "your name is Bagdad"
else
    echo "Your name is NOT Hasan or Bagdad"
fi
```

### COMPARISON [-eq, -ne, -gt, -ge, -lt, -le]
Remember, no extra space in variable declaration
```
NUM1=12
NUM2=-22

if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less then $NUM2"
fi
```

#### FILE CONDITION

- `-d file`   True if file is a directory
- `-e file`   True if file/directory exists
- `-f file`   True if the provided string is a file (recommended)
- `-g file`   True if the group id is set on a file
- `-r file`   True if the file is readable
- `-w`        True if the file is writable
- `-x`        True if the file is executable

```
FILE="file.txt"

if [ -f "$FILE" ]
then
    echo "$FILE is a file"
else
    echo "$FILE is NOT a file"
fi
```

### CASE STATEMENT
```
read -p "Are you 18 or over? Y/N " RESPONSE

case "$RESPONSE" in
    [yY] | [yY][eE][sS])
        echo "yeeee! You can vote :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry! You can not vote :("
        ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac
```

#### SIMPLE FOR LOOP

**EXAMPLE 1**
```
NAMES="HELLO!"
for NAME in $NAMES
    do
        echo "HEY $NAME"
done
```
**EXAMPLE 2**
```
touch file1.txt file2.txt

FILES=$(ls *.txt)
NEW="new"
NAME="files"

for FILE in $FILES
    do
        echo "Renaming $FILE to new-$FILE"
        mv $FILE $NEW-$FILE
done
```

### WHILE LOOP + READ FILE
```
LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./new-file.txt"
```

### FUNCTION
```
function hey() {
    echo "Heyyyyy! I am $1 and I am a $2"
}

hey "Rakib" "Student"
```

### CREATE FOLDER and WHITE A FILE
```
mkdir files
touch "files/file1.txt"
echo "Hello World!" >> "files/file1.txt"
echo "Created files/file.txt"
###