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