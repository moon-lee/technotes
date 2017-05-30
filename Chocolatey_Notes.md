## Install Chocolatey on Windows 10 
   
   * Requirements
        * Windows 7 +
        * PowerShell v2 +

        ``` 
           $PS > $PSVersionTable.PSVersion  
                    Major  Minor  Build  Revision
                    -----  -----  -----  --------
                    5      1      14393  953
        ```

    * Open the powershell as Administrator
    
    * Set ExecutionPolicy at least RemoteSigned
        
        ```
         $PS > Set-ExecutionPolicy RemoteSigned `
         $PS > iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

        ```

    * Packages
        *. Git : choco install git
        *. Git-credential-manager-for-windows : choco install git-credential-manager-for-windows
        *. Visual Studio Code : choco install visualstudiocode
        *. Adobe Reader DC : choco install adobereader | choco install adobereader-update
        *. posh-git : choco install poshgit
        *. keepass : choco install keepass

    * Choco Tips
        * list installed packages
            ` $PS > choco list -li `

        * check available upgrade packages
            ` $PS > choco upgrade all --noop `