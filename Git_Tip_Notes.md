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

* Delete a branch on remote :

    ` $ git push <remote name> -d[--delete] <remote branch name> `

* Pushing a branch on github :

    ` $ git push -u origin [name of your branch] `

* Retrieve the locations (and name value pairs) of all git configuration files

    ` git config --list --show-origin `

* Git config

   ```
	 git config --global user.email "your@email"
	 git config --global user.name "yourname"
     ```


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

* Git Merge
    * Make sure the merging branch and the mergeed barnch are up to date

    * if it is merged branch hotfix into the master branch

    ``` 
        git fetch (in hotfix branch)
        git checkout master
        git pull

        git merge hotfix
    ```
    * it will be fast-forward merge or three-way merge by git and it there are conflicts it has to be resloved

