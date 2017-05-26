## Install .Net Core - [Linux(ubuntu)](https://www.microsoft.com/net/core#linuxubuntu)

1. Add the dotnet apt-get feed - Ubuntu 16.04 / Linux Mint 18

    * codename - Ubuntu 16.04 is xenial 
    
    ```
    $ sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ *codename* main" > /etc/apt/sources.list.d/dotnetdev.list'
    
    $ sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893
    
    $ sudo apt-get update

    ```

2. Install .NET Core SDK


    ```
        $ sudo apt-get install donnet-dev-1.0.4

    ```