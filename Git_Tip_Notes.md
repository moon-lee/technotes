## Git Tips Notes

* Create a new repository on the command line

    ```
        $ echo "# dockerdemo" >> README.md
        $ git init
        $ git add README.md
        $ git commit -m "first commit"
        $ git remote add origin https://github.com/moon-siama/dockerdemo.git
        $ git push -u origin master

    ```

* push an existing repository from the command line

    ```
        $ git remote add origin https://github.com/moon-siama/dockerdemo.git
        $ git push -u origin master

    ```


* Create the branch pn your local machine and switch in this branch :

    ` $ git checkout -b [name of your new branch] `

* Change working branch :

    ` $ git checkout [name of your branch] `

* List both remote-tracking and local branch :

    ` $ git branch -a `

* Delete a branch on local :

    ` $ git branch -d [name of your branch] `

* Pushing a branch on github :

    ` $ git push origin :[name of your branch] `

* Retrieve the locations (and name value pairs) of all git configuration files

    ` git config --list --show-origin `

* Git Credential Manager for Windows

    * Configuration settings

        * authority

        ```
            git config --global credential.GitHub.com.authority GitHub
            git config --global credential.helper manager
            git config --global credential.modalprompt true
            git config --global credential.writelog true
        ```

* Cleaning Ignored Files
    ```
        git rm -r --cached .
        git add .
        git commit -m "Clean up ignored files"
    ```