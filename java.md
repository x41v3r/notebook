# 1 Running the first Java application

## 1.1 Downloading and setting up the JDK

&emsp;&emsp;We can download the JDK from different places. There is a one-stop page that always refers to the latest version of the JDK: <a href="https://jdk.java.net/" target="_blank">jdk.java.net</a>.

### 1.1.1 Setting up a JDK for Linux/x64

1. Expand the archive file with a `.tar.gz` extension.

```bash
tar -zxvf *.tar.gz
```

2. Create an environment variable called `JAVA_HOME` that points to the directory where we expanded the JDK.

```bash
export JAVA_HOME=/usr/local/jdk/jdk-8
```

3. Update the `PATH` variable to add the **bin** directory of the JDK directory to it.

```bash
export PATH=$JAVA_HOME/bin:$PATH
```

4. Test the command: `javac -v`

```bash
javac -v
```

### 1.1.2 Setting up a JDK for Windows/x64

1. Unzip a JDK `.zip` file to a directory (For example: `C:\\jdk\\jdk-8`).

2. 

## 1.2 



