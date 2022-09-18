#Inode
By definition, an inode is an index nodw which serves as a unique identifier for a specific piece of metadata on a given filesystem in linux. It maintain the integrity of file system.
##Some functions of inode in linux:
>Stores attributes of files such as 
>- Last time of change/access/modification
>- Owner/Permission data

>Store physical disk location of the data of object or file.

>Directory itself is a list of name assigned to inodes.

>If we ever become out of disk or unable to create a file or directory in because we probably run out of inodes.

There are some ways to see the inode of a file. One easiest way is mentioned below.
```
ls -il
```
Results:
```
[ksab@ArchiKsab Test]$ ls -il
total 0
46673068 -rw-r--r-- 1 ksab ksab 0 Sep 18 10:23 file.txt
46672837 -rw-r--r-- 1 ksab ksab 0 Sep 18 10:23 simpleFile.txt
```
Here the number represent are inodes of the files.
So why do we exactly need inodes? We can use this in following way.
```
[ksab@ArchiKsab Test]$ ls -il
total 0
46673068 -rw-r--r-- 1 ksab ksab 0 Sep 18 10:23 file.txt
46672837 -rw-r--r-- 1 ksab ksab 0 Sep 18 10:23 simpleFile.txt
[ksab@ArchiKsab Test]$ find ./ -inum 46673068 | xargs rm 
[ksab@ArchiKsab Test]$ ls
simpleFile.txt
```
Find inodes in file system:
```
[ksab@ArchiKsab Test]$ df -i
Filesystem         Inodes  IUsed    IFree IUse% Mounted on
dev                997344    625   996719    1% /dev
run                999381    942   998439    1% /run
/dev/sdb3         7520256 464720  7055536    7% /
tmpfs              999381    111   999270    1% /dev/shm
tmpfs             1048576     43  1048533    1% /tmp
/dev/sdb1               0      0        0     - /boot/efi
/dev/mapper/home 61046784 540833 60505951    1% /home
tmpfs              199876     59   199817    1% /run/user/1000
```
 An another command to monitor the file system in linux is ==du==. It used to show the files in a directory and also determine the amount of disk the respective directory is using.
 ```
 [ksab@ArchiKsab Test]$ du -h /home/ksab/CyberSecutity_Club/Test/
4.0K	/home/ksab/CyberSecutity_Club/Test/test1
8.0K	/home/ksab/CyberSecutity_Club/Test/
[ksab@ArchiKsab Test]$ du -h
4.0K	./test1
8.0K	.
 ```
