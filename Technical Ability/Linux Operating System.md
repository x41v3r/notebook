# Linux Operating System

## 1 System Mangement

### 1.1 Files and Directories

#### 1.1.1 file processing

```bash
ls -hali file_or_direc  # display the files and their attribute inside the pointed directory, or show the attributes of the pointed file
ls -hdli direc  # show the attribute of the pointed directory

cd direc  # enter the pointed directory
pwd  # show current location in the system

mkdir new_direc  # create a new name
rmdir direc  # delete an empty directory (current directory and non-empty directory are not allowed)

cp s_file d_direc  # copy the pointed file to d_direc
cp -r s_file_or_direc d_direc  # copy the pointed file or directory to d_direc
mv s_file d_direc  # move a file or a directory to d_direc
rm -rf file_or_direc  # delete a file or a directory with force

ln s_file hard_link  # create a hard link
ln -s s_file soft_link  # create a soft link
```

#### 1.1.2 file view commands

```bash
cat file_name  # Output file content
cat -n file_name  # Output file content and display numbers

more file_name  # 
less file_name  #

head -n num  # Output the content of the first n lines of the file
tail -n num  # Output the content of the last n lines of the file
```

#### 1.1.3 permission change

```bash
chmod 755 file_or_direc  # Change the permission code
chown user_name file_or_direc  # Manipulate a file's user assignment
chgrp group_name file_or_direc  # Manipulate a file's group assignment
```

#### 1.1.4 to manipulate archive files

```bash
# .tar.gz
tar -zcvf archive_file_name.tar.gz direc  # compress direc into archive
tar -zxvf archive_file_name.tar.gz  # decompress the archive

# .tar.bz2
tar -jcvf archive_file_name.tar.bz2 direc  # compress direc into archive
tar -jxvf archive_file_name.tar.bz2  # decompress the archive

# .tar.xz
tar -pcvf archive_file_name.tar.xz direc  # compress direc into archive
tar -pxvf archive_file_name.tar.xz  # decompress the archive
```

#### 1.1.5 notes

* We can ...

### 1.2 User and group management



