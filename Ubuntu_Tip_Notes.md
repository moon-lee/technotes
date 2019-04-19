## Ubuntu Tips and Notes

* chmod
    1. Read (4),  Write (2), eXecute (1)
    2. u=user, g=group, o=other, a=all

        `$ chmod u=rwx file.txt <- set the permission of file.txt to read, write and execute by user`

* Group
    1. Display group names

        `$ getent group`
        
        or

        `$ cat /etc/group`

    2. Add user to group

        `$ usermod -a -G groupName userName`

        * $USER to docker group

            `$ usermod -a -G docker $USER`

* Disk Usage
    1. In command line
        
        ` df -h `
    
    2. Open System Monitor from dash and select the "Filesystems" tab

* Create desktop file

    1. Go to /usr/share/applications

        ` $ sudo gedit yourapplication.desktop `

* List the installed software packages
    `$ sudo apt list --installed `
    `$ sudo apt list --installed | less `
    `$ sudo apt list --installed | grep -i build`
 
* Show software packages details
    `$ apt show packagename`
    ` Goto https://packages.ubuntu.com/ and search ` 

* Install Curl
    -> Curl is command line utility for transferring data from or to a server designed to work without user interactions

    `$ sudo apt update | sudo apt install curl `

* Install developments tools
    `$ sudo apt install build-essential`

* Install VirrualBox 6.0 
    1. Add VirtualBox 6 Repo keys
        `:$ wget -q https://www.virtualbox.org/download/oracel_vbox_2016.asc -O- | sudo apt-key add - `
        `:$ wget -q https://www.virtualbox.org/download/oracel_vbox.asc -O- | sudo apt-key add - `

    2. Add repository
        `"$ sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"`

    3. Install extension pack
        - Download extension pack
        ```
        $ wget https://download.virtualbox.org/virtualbox/6.0.0/Oracle_VM_VirtualBox_Extension_Pack-6.0.0.vbox-extpack
        $ sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.0.0.vbox-extpack
        ```
    
* Fix "system program problem detected" error in Ubuntu
    https://itsfoss.com/how-to-fix-system-program-problem-detected-ubuntu/
    `$ ls -l /var/crash/ `
    `$ sudo rm /var/crash/*`

* VMWare 15 Error on Ubuntu 18.4 - Could not open /dev/vmmon: No such file or directory
    
    Reason
    
    The system with secure boot enabled will not allow loading of any unsigned drivers. Due to this vmmon module is not loaded in the system and thus getting above error.
    

```
    $openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=VMware/"


    $ sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmmon)

    $ sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmnet)

    //$ tail $(modinfo -n vboxdrv) | grep "Module signature appended"

    $ sudo mokutil --import MOK.der
        --> rebooted --> registered the key upon booting successfully and confirmed by:

    $ mokutil --test-key MOK.der
        --> Also manually signed up the drivers by:

    $ sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmmon)

    $ sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmnet)
```

* Disable built wi-fi adapter in ubuntu

    1. get module_name or id

    `$ lspci -nnk | grep -iA2 net`

    2. add blacklist  module

    `sudo gedit /etc/modprobe.d/blacklist.conf`

    3. Reboot    