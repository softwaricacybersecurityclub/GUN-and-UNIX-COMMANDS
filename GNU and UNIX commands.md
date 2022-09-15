# Work on the command line
We use shell to type in a terminal.
It is a command line interperter.
Different types od shell are 
* sh 
* zsh
* csh
* ksh

We can write a program called script using bash.

Environment variable are a way to store information that can affect the running processes.
> Note hidden file in linux start with (.) dote.

```bash
env #show all the variable in your current shell.
which #show the location of the command
which ls # and other commend
pwd # shows the current directory
echo $HISTFILE #shows the location of history file which is used by bash shell to give a previous command
ls #shows all the file in the current directory
ls -a #same a ls but also show all the hidden file 
cat # it is used to read the file
less # show the file page by page
history # print all 
export HISTFILE=/home/command # this wills save history in command file
.bashrc # is a file that runs every thime we login we can change it according to the need
vi && vim # is a built in text editer in linux
echo # is used to print in a terminal
set && unset # it is a build into command in a linux which is used to set or ubset the values of various shell options and positional parameters that are built into your shell
man #It is used to know the discribe version of a command with how to use
man man # to know how to use man
uname # it print ststem information
uname -a # mostly used as it gives all the information of a system
echo 'ls ; la' # '' will quote commend 
echo ls \; ls # backslash will also work same a ''
type la # type is used to give information about command
which cat # tells the location of commend
cut # is used to remove section from each line of file
cut -d: -f2 hi.txt # cuts line with : and get the second word 
cat -vet file.txt # shows all the tabs and enter used
expand file3.txt # remove tab and add spaces
unexpand -a file.txt #add tabs in space
wc file #tells about new line count, word count, and bytes counts for a file
fmt file.txt # change file line to make it readable
head file # read the top 10 line of the file and we can use -n to specify any
tail file # read the last 10 lines of the files and can use -n to specify any number
join file1 file2 # is used to join two file together if they share a common field
nl file # adds file number to a file
od file # gives octal representition of file
paste file1 file2 # works same as join but doesn't need common field
pr # used to make file look better before print
sed # has verious function wsed in text
echo sunday | sed -e s/day/night/ # gives sunnight
sort file1 # sort the file in alphabetical
split # split files each of 1000 lines
echo hello | tr -d l # remove l from word
unique hi.txt # remove repating in adjacent line
bzip2 hi.txt #zip file in .bz2 extension
bzcat hi.txt.bz2 # cat the file without zip
bunzip2 hi.txt.bz2 # unzip the file
gzip hello.txt # zip file with .gz
zcat hello.txt.gz # cat the decompressed file with out decompressing
gunzip hello.txt.gz #decompressed gz file
zx && xzcat && unxz #work as gzip,zcat, and gunzip
md5sum hello.txt #gives md5 hash of a file
sha256sum hello.txt #gives sha hash
sha512sum hello.txt #gives sha hash but better the n sha256sum
```

 ## Perform basic file mangement
 
 ```bash
ls ~ # home directory
cp file1 copyfile # copies file 
mkdir test # makes a directory
mv test /home/testing # move a file to testing
touch hi # creates a new file
rm hi # remove the file
rm -r test # remove a directory and the file 
rmdir test # remove a empty directory
file hi # gives the information about file
find -name "file" # used to find file name file
tar cvf file.tar file1 file2 #makes a archive of many file to one
dd if=<input> of=<output> [options]#can dump entire hardisk or partition to single file
xxd out # gives haxdump of the file
```

## use of streams, pipes and redirects
There are three standard streams that the shell uses.
* STDIN - 0
* STDOUT - 1
* STDERR - 2
```bash
ls -l > ls.txt # redirest the output in a file and rewrite all the data if there was previous
ls hello 2> error.txt # redirect the error output 
ls >> ls.txt # it append in the previous file
short < input.txt # redirect the input
ls | grep hi # | is used to take the output of a command as the input of other
ls -1 | xargs wc # xargs used to give the output of file one by one command
ls | tee | hi.txt #show output and do a redirection

```

## Create, monitor and kill processes

```bash
ping google.com # meaures the time taken to travell the reguest 
ping google.com + (ctrl + z) #It suspand the command
bg # resume the command in the background
source script.sh # used to run script in the same shell
ping google.com & #background the command as soon as we start | fg is used to get resume the access
nohup # is used to supress all the message in a terminal
cat nohup.out # to read the output 
ps # used to show currently running process
ps a # show all the process attached to a terminal
ps aux # show process in a cleaner way
kill (process id) # to kill the process
kill -TERM (process id) # terminate and kill the process
kill all ping # kall all the ping process
pkill ping # treminated all the ping process
top # continually updating screen of process
uptime # show the uptime of a os
free # gives memory statistics
```

### Kill signals
* SIGINT - interrupt signal - CTRL + c
* SIGKILL - kill signal 
* SIGSTOP -pause signal - CTRL + z
* SIGTERM - termination signal

## Watch and Tmux
```bash
watch -n 1 date  #used to run commands prediodically
tmux # we can open multiple window in one terminal (ctrl + b ) & (sift +5) to add another terminal (ctrl + b and arrow key to switch in terminal) ctrl +b +c to add full screen terminal
```

## How to Modify process execution priorities

### Job Priorities
* Nice value determines how much CPU times a process will get
* range from -20 (Higher priority) to 19 (Lowest priority)
* 0 is the default nice value

```bash
nohub nice -15 ping google.com && top # set the nice value of ping to 15
```

## Search text files using regular expressions
** Regular expression **
* It is a sequence of symbols and characters which can express a string or pattern to be searched for within a pice of text where words can be short to regex too.
** Symbols that can be used with regular expression **
* | - or 
* () - grouping
* $ - end of a line
* ^ - start of a line
* . - one character

** Quantifiers helps us to match specific characters **
* ? - 0 or 1 occurrence of the preceding element
* * - 0 or more occurrences of the preceding element
* + - 1 or more occurrences of the preceding element
* {n} - the preceding item in matched exactly n times
* {min,} - the preseding items is matched min or more times
* {min,max} - the preceding items is matched at least min times but not more then max times
** grep = Globally search for a Regular Expression and Print **
It uses symbols and regular expression to search plain text.
Versions of grip are
* grep
* egrip 
* fgrep
* 
```bash
grep apple * # search apple in all files
grep '^apple' * # search apple in the start of line
grep --help # show all the possible command we can use with grep
egrep 'l+' input.txt # search all the words that has l
sed -e 's/l\+/x/' input.txt > out.txt #replace all l with x

```

## Performing basic file editing operations using vi
| command       | purpose                                             |
| ------------- | --------------------------------------------------- |
| vi <filename> | Open or edit a file.                                |
| i             | Switch to Insert mode.                              |
| Esc           | Switch to Command mode.                             |
| :w            | Save and continue editing.                          |
| :wq or ZZ     | Save and quit/exit vi.                              |
| `:q!`         | Quit vi and do not save changes.                    |
| yy            | Yank (copy a line of text).                         |
| p             | Paste a line of yanked text below the current line. |
| o             | Open a new line under the current line.             |
| 0             | Open a new line above the current line.             |
| A             | Append to the end of the line.                      |
| a             | Append after the cursor's current position.         |
| I             | Insert text at the beginning of the current line.   |
| b             | Go to the beginning of the word.                    |
| e             | Go to the end of the word.                          |
| x             | Delete a single character.                          |
| dd            | Delete an entire line.                              |
| Xdd           | Delete X number of lines.                           |
| G             | Go to the last line in a file.                      |
| gg            | Go to the first line                                |
| h             | Move left one character.                            |
| j             | Move down one line.                                 |
| k             | Move up one line.                                   |
| l              |                    Move right one character.|
