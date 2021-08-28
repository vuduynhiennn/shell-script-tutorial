- to check calendar, you need to type the **cal** commmand as follows
	- cal

- change passowrd : all unix system requirei passwords to hep ensure that yoru files and data remain your own and that the system itself is secure from hackers and crackers. Following are the steps to change your password
	- **step 1** : to start, type passowrd at the command prompt as shown below
	
	- **step 2** : enter your old password the on you;re currently using 

	- **step 3** : type your new password. Always keep your password complex enough so that nobody can guess it. But make suare, you remember it.

	- **step 4** : you must verify the password by tuping it again

- listing directories and files : all date in unix organized into files. All files are organized into directories. These directories are organized into a tree-like struture called the filesystem you can use the **ls** command to list out all the files or directories available in a directory. FOllowing is the example of using ls command with -l option 


- system shutdown : the most consistent way to shut down a unix system properly via the commmand line is to use one f the following commands

	- **halt** : bring the system down immediately
	- **init 0** : powers off the system using predefined scripts to sysnchronize and clean up the system prior to shutting donw
	- **init 6** : reboots the system by shitting it donw completely and then restarting it
	- **poweroff** : shuts down the system by powering off
	- **reboot** : reboots the system
	- **shutdonw** : shutdown the system 

# METACHARACTER

metacharacters have s special meaning in unix. for example * and ? are metacharacter. we use * to match 0 or more characters, a question mark (?) matches with a single character

for example" `ls ch*.doc`

here * works as meta chracter which matchs with any character if you want to display all the files ending with just .doc then you can use the flowwing command

`ls *.doc`

# HDIDEN FILES
	

an invisible file is one, the first chracter of which is the dot or the preod character (.) unix programs (inclung the shell) use most of these files to store configuraiton information

some commong examples of the hidden files include the fiesl

	.prfile - the bourne shell (sh) initalization script
	.kshrc the korn shell (ksh) initaliztion script
	.cshrc the c shell sch initnlztion script

to lis the invisale files, the specify the -a option to ls 

.single got (.) this represents the curren direcotry
..double got (..) this represents the parten directory 

#COUNTRING WORDS IN A FILE

you can use the wc command to get a count fo the total of lines, wors, and chracters  contained in a file, Folliwng is simple example to see the information about the file created above here is the detail of all the four columns 

`wc filename1 filename2 filename3`


#### you can go in your home directory anytime using the follwing command 

here ~ indicates the home directory. suppose you have to go in any other use's home directory use the folliwng command cd ~user_name

to go in the last directo you can use the follwing command cd

# absolute/ relative pathnames

/filename/filename : this is absolute directory
filename/filenam: this is relative directory

# listing directories

to list the files ina directory you can use the following systeax

`ls dirname`

# REMIVING DIRECTORIS 

directoris can be delteted using the rmadir command as follows

`rmdir dirname	

note: to remove a directory make sure it is empty which means there should not be any file or sub directory this directour
you can remove tilles 


#RENAMING DIRECTORS

the mv (move) command can also be used to rename a directory 
the syntax is as follows 

`mv olddir newdir`

you can renama a directory mydirc to yourdir as follows

`mv mydir yourdir`

the directores . and ...

# CHANGEING PERMISSIONS 

to change the file or the directory permissions you use the chmod change mode command 

1. + : adds the designated permission (s) to a file or directory

2. - : removes the designated permissin(s) from a file or directory

3. = : sets the designated permission(s)

here is an example using testfile. Running ls -1 on the testfile shows that the file;s permision are as follow


#USING chmod with absolute permisions 

the second way to modify permissions with the chmod command is to use a number to specify each set of permissions for the file 
each permission is assigned a value as the following table shows and the total of each set of permission provides a number for that set

1. 0 : no permission

2. 1 : execute permission

3. 2 : write permission

4. 4 : read permission

5. read and execute 

# PERMISION

`chmod 777 file_name`

1) for user
2) for group 
3) for users

# changing owenrs and groups 

while creating an account on unix it assigns a owner id and a group id to each user. ALl the permission mentioned above are also assinged based on the onwer and the groups 

two commands are avaiable to change the owner and the group of files

`chown` the chown command stands for stands for change owner and is use to change the onwer of a file 

`chgrp` the chgrp command stands 

# changing ownership

the chown command changes the ownersship of a file the basic syntax is as follows
`chown user filelist`

the value of the user can be either the name of a user on the system or the user id of a user on the system the flowwing example will help you understand the concept 

`chown anrood stestfile`


# suid and sgid file permission

offten when a command is executed it will have to be executed with special privileges in order to accomplish its task as an example when you change your password with the passwd command your new password is stored in the file /etc/shadow 
as a regular user you don't have read or write access to this file for security reasons but when you change your password you need to have the write permission to this file 

# the pr command

the pr command does minor formating of files onthe termianal screen or of a printer. For example if you have a long list of names in a file. you can format it onscreen into two or more columns following is the syntax for pr command
`pr option(s) filename(s)

the pr changes the format of the file only on the screen or on the printed copy; it doesn't modify the orginal file> FLlowing table lists some pr options


1. k produces k columns ofouput
2. -d double-spaces the output (not on all pr versions)
3. -h "header" takes the next item as report header
4. -t eliminates the printing of head and the top/bottom margins
5. -I PAGE_LENGTH sets the page length to PAGE_LENGTH (66) lines. The default number of lnes of text is 56
6. -o MARGIN : offsets each line with MARGIN (zero) spaces
7. -w PAGE_WIDTH : sets the page width to PAGE_WIDTH (72) characters for multiple text-column output only

before using pr here are the contents of a sample file named food

# sending email 

you use the unix mail command to send and receive mail. here is the syntax to send an email

`$mail [ -s subject] [ -c cc-addr] [-b bcc-addr] to-addr`

here are important options related to mail command -s

1) -s : specifies subject on the command line
2) -c : sends carbon copies to the list of users. List should be a commasepareted list of names
3) -b : sends blind carbon copies to list. List should be a commaseparated list of names

following is an example to send a test message to addmin@yahoo.com

`$mail -s "Test Message" admin@yahoo.com`

you are then expected to type in your message, followed by contro D at the beginning of a line to stop, simply type don (.) as follows

you are then expected to type in your message. followed by condtrol D at the beginning of a line to stop simply type dot (.) as follows

hi, this is a test 
.
cc: 

you can send a complete file using a redirect < operator as follows

`$mail -s "report 05/06/2002" admin@yahoo.com < demo.txt

to check incoming email at your unix system, ,you simply type email as follow

$mail
no email


# listing running processes 

it is easy to see your own processes by running the ps (process status) command as follows 

`ps`
one of the moscommonly used flags for ps ris the -f (f for full option) which provides one information as shown in the following exampple 

# the ftp utility

here ftp stands for file transfer protocol. this utility helps you upload and download your file from one computer to another computer
the ftp utility has its own set of unix like commands these caommand 

**syntax**

followoing is the simple syntax to use the ftp commmand

`ftp hostname or ip-address`

the above command would prompt you for the login ID and password. Once you ar authenticated, you can access the home directory of the login account and you would be able to perfom various commands
the following tables list out a few imoprtant commands


1. put filename : uploads filename from the local machine to the remote machine
2. get filename : donwload filename from the remote machine to the local machine
3. mput file list : uploads more than one file from the local machine to the remote machine
4.mget file list: downlaods more then one file from the remote machine to the local machine
5. prompt off : turns the prompt off , By default you will receice a prompt to upload or donwload files using mput or mget commands
6. prompt on: turns the prompt on
7. dir : liss all the files avaible in the current directory of the remote machine
8. cd dirname : changes directory to dirname on the remote machine
9. lcd dirname : changes directory to dirname on the local machine
10. quite : helps logout from the current login




# using shell arrays


