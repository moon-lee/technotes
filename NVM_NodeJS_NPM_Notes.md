## Install NVM (Node version manager) - Ubuntu/macOS ##

    -> Install nvm <- it's a version manager for Node.js
        -> https://github.com/creationix/nvm/blob/master/README.markdown
        -> Check C++ compiler and cURL
            : $ sudo apt-get install build-tools libssl-dev curl
        -> Running the install script with cURL
            : $ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash 
        -> Check the below in the .bashrc or .zshrc
            : export NVM_DIR="$HOME/.nvm"
            : [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
        -> Verify that nvm was Properly installed
            : $ nvm --version
        -> Install the latest Node.js version
            : $ nvm install node
        -> To use that version of Node.js
            : $ nvm use node
        -> Install the latest Node.js LTS version
            : $ nvm install --lts
        -> To use that latest LTS version of Node.js
            : $ nvm use --lts
        -> To list installed versions
            : $ nvm ls
        -> To list remote versions available for install
            : $ nvm ls-remote --lts

    -> Install Node.js <- from nvm
        : It is a JavaScript runtime built on Chrome's V8 JavaScript engine.
        : It uses an event-driven, non-blocking I/O model that makes it lightweight and efficient.
        : https://nodejs.org/en/download/package-manager/

    -> Install npm <- from Node.js 
        : it is a package manager for JavaScript
        : It is came with Node.js and need to up-to-date
            -> $ npm install -g npm

## Install NVM (Node version manager) - Windows ##

    -> Install nvm-windows <- it's a version manager for Node.js in windows
        -> https://github.com/coreybutler/nvm-windows
        -> Verify that nvm was Properly installed
            : $ nvm version
        -> Install the latest Node.js version
            : $ nvm install latest
        -> To use that version of Node.js
            : $ nvm use <node installed version>
        -> To list installed versions
            : $ nvm ls
        -> To list remote versions available for install
            : $ nvm list available

    -> Install Node.js <- from nvm
        : It is a JavaScript runtime built on Chrome's V8 JavaScript engine.
        : It uses an event-driven, non-blocking I/O model that makes it lightweight and efficient.
        : https://nodejs.org/en/download/package-manager/

    -> Install npm <- from Node.js 
        : it is a package manager for JavaScript
        : It is came with Node.js and need to up-to-date
            -> $ npm install -g npm
