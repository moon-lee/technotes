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

3. dotnet Generate Assets for Build and Debug

    * Under `.vscode` folder, It will be generated two json files

        * launch .json

        ``` json
            {
            // Use IntelliSense to find out which attributes exist for C# debugging
            // Use hover for the description of the existing attributes
            // For further information visit https://github.com/OmniSharp/omnisharp-vscode/blob/master/debugger-launchjson.md
            "version": "0.2.0",
            "configurations": [
                    {
                        "name": ".NET Core Launch (console)",
                        "type": "coreclr",
                        "request": "launch",
                        "preLaunchTask": "build",
                        // If you have changed target frameworks, make sure to update the program path.
                        "program": "${workspaceRoot}/bin/Debug/netcoreapp1.1/dotNetCoreDemo.dll",
                        "args": [],
                        "cwd": "${workspaceRoot}",
                        // For more information about the 'console' field, see https://github.com/OmniSharp/omnisharp-vscode/blob/master/debugger-launchjson.md#console-terminal-window
                        "console": "internalConsole",
                        "stopAtEntry": false,
                        "internalConsoleOptions": "openOnSessionStart"
                    },
                    {
                        "name": ".NET Core Attach",
                        "type": "coreclr",
                        "request": "attach",
                        "processId": "${command:pickProcess}"
                    }
                ]
            }
        ```


        * tasks.json

        ``` json

            {
                "version": "0.1.0",
                "command": "dotnet",
                "isShellCommand": true,
                "args": [],
                "tasks": [
                    {
                        "taskName": "build",
                        "args": [
                            "${workspaceRoot}/dotNetCoreDemo.csproj"
                        ],
                        "isBuildCommand": true,
                        "problemMatcher": "$msCompile"
                    }
                ]
            }

        ```

