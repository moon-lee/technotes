1. Install Google Chrome
	-> https://www.google.com.au/chrome/browser/desktop/index.html

2. Install Synergy (KVM Software)
	-> https://symless.com/synergy/

3. Install Oh My Zsh
	-> Install Z Shell 
		: $ echo $SHELL <- verify the current shell
		: $ sudo apt-get install zsh
		: $ chsh -s $(which zsh)

	-> Install git (the latest stable version) <- using personal package archives
		: $ sudo add-apt-repository ppa:git-core/ppa
		: $ sudo apt-get update
		: $ sudo apt-get install git
	-> Config git
		: $ git config --global user.email "your_email@example.com"
		: $ git config --global user.name "your name"
		: $ git config --global credential.helper "cache --timeout=3600"
		: if it is using two-factor authentication
			-> replace GitHub Password to Personal access tokens
			-> https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/

	-> Install Oh-My-Zsh
		: $ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

	-> Install theme and fonts
		: Powerlevel9k theme
			-> $ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
			-> add the below in ~/.zshrc
				: ZSH_THEME="powerlevel9k/powerlevel9k"
		: Install Powerline font
			-> Option 1 : Adobe Source Code Pro
			-> Option 2 : Powerline fonts -> https://github.com/powerline/fonts
			-> Option 3 : Awesome Powerline fonts -> https://github.com/gabrielelana/awesome-terminal-fonts
			-> Option 4 : Nerd-fomts -> https://github.com/ryanoasis/nerd-fonts

4. Install SublimeText 3
    -> Go To SublimeText_Notes.txt in this project.

5. Install Bitnami LAMP Stack
	-> https://bitnami.com/stack/lamp/installer
	-> https://docs.bitnami.com/installer/infrastructure/lamp/ <- Documentation
		: $ cd /tmp <-- changing directory to installer location
		: $ chmod +x ./bitnami-wordpress-*-module-linux-x64-installer.run <-- change mode to executed mode
		: $ sudo ./bitnami-wordpress-*-module-linux-x64-installer.run  <-- install LAMP stack globally with root right 
	-> change the installed folder group (apache2, apps, frameworks)
		: $ sudo chown <user>:<group> [directory|files] -> $ sudo chown -R :moon apps

6. Install Mysql workbench
	-> https://dev.mysql.com/doc/workbench/en/wb-linux.html
	-> Install the MySQL APT repository <- https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/
		: $ sudo dpkg -i mysql-apt-config_0.8.3-1_all.deb
		: $ sudo apt-get update
	-> Install MySQL Workbench
		: $ sudo apt-get install mysql-workbench-community

	-> Reset MySQL root password
		: stop MySQL server
		: Open terminal and add lamp stack configuration setting using "use_lampstack" shell script
			-> : $ sudo ./use_lampstack
		: Start MySQL server in safe mode
			-> : $ sudo mysqld_safe --skip-grant-tables
		: And then open other terminal
			-> : $ mysql -u root
			-> : $ FLUSH PRIVILEGES;
			-> : $ ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass';	
		: Then Restart MySQL server

7. Install Previous Projects
	-> SIMS : SIAMA SIMS version 1.0
		-> clone with specific branch and rename the repository to "bis"
		: $ git clone -b local_sims https://github.com/moon-siama/bis.git bis

		-> Import database <- using backup script and MySQL Workbench
		-> Configuration the web pages
			-> config the lamp stack conf files
				: $ sudo mkdir installdir/apps/myapp
				: $ sudo mkdir installdir/apps/myapp/htdocs/
				: $ sudo mkdir installdir/apps/myapp/conf
			-> Create and edit the installdir/apps/myapp/conf/httpd-prefix.conf file and add the line below to it:
				: Alias /myapp/ "installdir/apps/myapp/htdocs/"
				: Alias /myapp "installdir/apps/myapp/htdocs/"
				: Include "installdir/apps/myapp/conf/httpd-app.conf"
			-> Create and edit the installdir/apps/myapp/conf/httpd-app.conf file and add the content below to it. This is the main configuration file for your application, so modify it further depending on your application's requirements.

				<Directory installdir/apps/myapp/htdocs/>
				    Options +FollowSymLinks
				    AllowOverride None
				    <IfVersion < 2.3 >
				    Order allow,deny
				    Allow from all
				    </IfVersion>
				    <IfVersion >= 2.3>
				    Require all grantedl
				    </IfVersion>
				</Directory>

				: NOTE: If your application uses .htaccess files, you should change the AllowOverride None option to AllowOverride All. Find out how to move the .htaccess file content to the main server configuration file.
		
		    -> Once you have created the files and directories above, add the following line to the end of the main Apache configuration file at installdir/apache2/conf/bitnami/bitnami-apps-prefix.conf, as shown below:

				: Include "installdir/apps/myapp/conf/httpd-prefix.conf"

    -> automation : Automation web testing with a headless webkit as phantomjs, casperjs, mocha, chai, nodejs, npm, nvm
   		-> clone and rename the repository to "automation"
   		: $ git clone https://github.com/moon-siama/automation_testing.git automation

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

   		-> Install PhantomJs
   			: $ npm install phantomjs-prebuilt
   			
   		-> Install CasperJs
   			: $ npm install casperjs

   	-> cidemo : a demo web site based on the codeigniter framework 
   		-> clone and rename the repository to "cidemo"
   		: $ git clone https://github.com/moon-siama/codeigniter.git cidemo
   		-> create and change the branch to "mywebapp" from origin/mywebapp
   		: $ git checkout -b mywebapp origin/mywebapp
   		-> Configuration the web pages in the lamp stack


    -> bootstrapdemo : a demo web site based on the Bootstrap 3 

8. Install GIMP from PPA
	-> This PPA is for Ubuntu >=12.04 and Linux Mint >=13

	-> Install:
		open a terminal and type:
		$ sudo add-apt-repository ppa:otto-kesselgulasch/gimp
		$ sudo apt-get update
		$ sudo apt-get install gimp

	-> Uninstall:
		open a terminal and type:
		$ sudo apt-get install ppa-purge
		$ sudo ppa-purge ppa:otto-kesselgulasch/gimp

9. Install KeePass 2 from PPA
	-> https://launchpad.net/~jtaylor/+archive/ubuntu/keepass

	-> Install:
		$ sudo add-apt-repository ppa:jtaylor/keepass
		$ sudo apt-get update
		$ sudo apt-get install keepass2

	-> Uninstall:
		$ sudo apt-get install ppa-purge
		$ sudo ppa-purge ppa:jtaylor/keepass
