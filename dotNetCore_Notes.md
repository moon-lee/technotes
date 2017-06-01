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

## Install .Net Core - [Windows](https://www.microsoft.com/net/core#windowscmd)

1. Install .NET Core SDK

    * [Download .NET Core SDK](https://go.microsoft.com/fwlink/?linkid=848827)


## Using .Net Core - Command-Line interface [(CLI)](https://docs.microsoft.com/en-us/dotnet/core/tools/) tools

1. Command structure

    * **the drive("dotnet")**, **the command (or "verb")**, *[argument][options]*

2. dotnet commands

    * **dotnet-build** : Builds a project and all of its dependencies.

        `$dotnet build`

    * **dotnet-publish** : Packs the application and its dependencies into a folder for deployment to a hosting system.

        `$dotnet publish  [<PROJECT>] [-f|--framework] [-r|--runtime] [-o|--output] [-c|--configuration] [--version-suffix] [-v|--verbosity] [-h|--help]`
    
        `$dotnet publish -f netcoreapp1.1 -c Release`

        `$dotnet publish -f netcoreapp1.1 -c Release -o ~/Documents/MyApps/genPano2vr/bin`