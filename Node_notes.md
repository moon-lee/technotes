* Get list of installed npm packages 

    1. Globally installed npm packages
       
        `$ npm list -g`
    
    2. Locally installed npm packages

        `$ npm list`

* Get current npm version and update npm

    ```
        $ npm --version
        $ npm install npm@latest -g
    ```

* Resolving lockfile conflict - https://docs.npmjs.com/files/package-locks
   
    `npm install --package-lock-only`