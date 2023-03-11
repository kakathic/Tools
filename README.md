# Tools

- Add utilities like jdk, apktool, zip etc running on android for magisk and mt manager app

- For mt manager support even if you are not rooted

**Installation Instructions**
---

- MT Manager

  - Open Termilal

  - Copy below command line and paste in Terminal, or file.sh

  > <sup># kakathic<br/>kk="/data/data/bin.mt.plus/tome/term";<br/>mkdir -p $kk;<br/>[ -e $kk/Xu.sh ] || curl -# -L -k https://github.com/kakathic/Tools/raw/Vip/Xu.sh -o $kk/Xu.sh;<br/>. /data/data/bin.mt.plus/tome/term/Xu.sh;<br/>Xu_install busybox static<br/></sup>

- Module magisk

  - Download module TShell.Zip

  - [Releases](https://github.com/kakathic/Tools/releases)

  - Modify the module and use.

**Command shell**
---

- Write it correctly in uppercase or lowercase as below 

**`Taive`**

- Used to download files

  > <sup>Taive "https://kakathic.com/file.txt" "/sdcard/save.txt"<sup>

**`Xem`**

- View online files like txt, xml etc

  > <sup>Xem "https://kakathic.com/file.txt"<sup>

**`Xu_install`**

- Used to download additional packages like zip, busybox, etc

  > <sup>Xu_install zip static<sup>

  > <sup>Xu_install apktool 2.6.1<sup>

**`Delete_all`**

- Delete all downloaded data and all packages 

- See more: [Package](List.md)
