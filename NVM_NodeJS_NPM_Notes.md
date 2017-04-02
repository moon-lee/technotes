## Install NVM (Node version manager) - Ubuntu/macOS 

    1. https://github.com/creationix/nvm/blob/master/markdown 
    2. Check C++ compiler and cURL
```
        $ sudo apt-get install build-tools libssl-dev curl

```    
    3. Running the install script with cURL
```
        $ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash 

```    
    4. Check the below in the .bashrc or .zshrc
```
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

```    
    5. Verify that nvm was Properly installed
```
        $ nvm --version

```    
    6. Install the latest Node.js version
```
        $ nvm install node

```    
    7. To use that version of Node.js
```
        $ nvm use node

```    
    8. Install the latest Node.js LTS version
```
        $ nvm install --lts

```    
    9. To use that latest LTS version of Node.js
```
        $ nvm use --lts

```    
    10. To list installed versions
```
        $ nvm ls

```    
    11. To list remote versions available for install
```
        $ nvm ls-remote --lts

```
    12. Install Node.js <- from nvm
        * It is a JavaScript runtime built on Chrome's V8 JavaScript engine.
        * It uses an event-driven, non-blocking I/O model that makes it lightweight and efficient.
        * https://nodejs.org/en/download/package-manager/

    13. Install npm <- from Node.js 
        * It is a package manager for JavaScript
        * It is came with Node.js and need to up-to-date
```
            $ npm install -g npm

```
## Install NVM (Node version manager) - Windows 

    1. https://github.com/coreybutler/nvm-windows
    2. Verify that nvm was Properly installed
```
        $ nvm version

```    
    3. Install the latest Node.js version
```
        $ nvm install latest

```    
    4. To use that version of Node.js
```
        $ nvm use <node installed version>

```    
    5. To list installed versions
```
        $ nvm ls

```    
    6. To list remote versions available for install
```
        $ nvm list available

```
    7. Install Node.js <- from nvm
        *      It is a JavaScript runtime built on Chrome's V8 JavaScript engine.
        *  It uses an event-driven, non-blocking I/O model that makes it lightweight and efficient.
        *  https://nodejs.org/en/download/package-manager/

    8. Install npm <- from Node.js 
        * It is a package manager for JavaScript
        * It is came with Node.js and need to up-to-date
```
        $ npm install -g npm

```