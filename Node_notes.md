* Get list of installed npm packages 

    1. Globally installed npm packages
       
        `$ npm list -g --depth=0`
    
    2. Locally installed npm packages

        `$ npm list`

* Get current npm version and update npm

    ```
        $ npm --version
        $ npm install npm@latest -g
    ```

* Resolving lockfile conflict - https://docs.npmjs.com/files/package-locks
   
    `npm install --package-lock-only`


* Uninstall a package

    ``` 
        npm uninstall [<@scope>/]<pkg>[@<version>]... [-S|--save|-D|--save-dev|-O|--save-optional|--no-save]

        aliases: remove, rm, r, un, unlink   

        -S, --save: Package will be removed from your dependencies.
        -D, --save-dev: Package will be removed from your devDependencies.
        -O, --save-optional: Package will be removed from your optionalDependencies.
        --no-save: Package will not be removed from your package.json file.
    
    ```