# Some important commands need to know as linux administrator
- `which`
```
which dd
```
- `type`
```
type echo
```
- `whereis`
```
whereis grep
```                                                                                                             
# Customize and use the shell enviraonment
Essential paths where we changes in bash.
> - ~/.bashrc
> - ~/.bash.profile
> - ~/profile

### Alias in linux
`alias` command simply instructs the shyell to replace one strings with another strings while executing the commands.
==Syntax==
```
alias name="value"
```

```
[ksab@ArchiKsab ~]$ alias hi="echo hello"
[ksab@ArchiKsab ~]$ hi
hello
```
To remove the alias that is created we just cam simply `unalias` the alias.
``` 
unalias [alias name]
```

```
[ksab@ArchiKsab ~]$ alias 
alias f='nautilus&'
alias hi='echo hello'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
[ksab@ArchiKsab ~]$ unalias hi
[ksab@ArchiKsab ~]$ alias 
alias f='nautilus&'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'

```
# Customization or writing of simple scripts.
Shell is a CLI interface of linux operating system which accepts bunch of commands from users to interperts them to operating system. We can do certain task in shell by writing the multiple line of command in  file i.e. in shell script.

#### The hash bang
Every scripts starts from two symbol in scripts called `hash bang`.
>#! --> the starting of evry shell script which allows the full path to the interpreter.
Generally the hash bang of shell scripts looks like this.
```
#!/bin/bash
```
#### if condition in script
Usage:
- Use a test a condition.
- Do something from the result.
Example:
```
#!/bin/bash
if [ -f ~/.filename ]
then
    source ~/.filename
fi
```
Or 

```
#!/bin/bash
if [ "$USER" == "ksab" ]
then
    echo "Hello Kesab! :)"
fi
```
#### for loop
Usage: 
- Test if it reach the end of the rannge.
- If not, do something.
Syntax:
> for VARIABLE in 1 2 3 4 5
> do 
>   command1
>   command2
>done

- The `seq` command, can be used to print a sequence of numberto standard output.
Syntax
> for VARIABLE in `seq 5` [note the `seq 5` should be between two tilde sign]
> do 
>   command1
>   command2
>done

#### Variable storage
Like wise in other programing languages we can also store information from a command in variable in script.
Syntax:
```
current_date = $(date)
echo $current_date
```
- To take the variable from user we can user `read`

```
#! /bin/bash
echo "Enter your name:"
read name
echo "Hello $name :)"
```

#### while loop
Usage:
- Test if condition is meet.
- Execute commands
`Syntax:`
```
while true
do
    command1
    command2
done
```
