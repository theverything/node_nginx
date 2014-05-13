touch ~/.netrc
echo "machine <%MACHINE> login <%LOGIN> password <%PASSWORD> protocol https" > ~/.netrc

git clone <%REPO> /home/app

cd /home/app && npm install

cd /home/app && node --harmony gulpfile
