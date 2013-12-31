Vagrant with rbenv and ruby 2.0 installed.

[chef-rbenv](https://github.com/fnichol/chef-rbenv.git) and [chef-ruby_build](https://github.com/fnichol/chef-ruby_build) are added as git submodules in the /cookbooks directory.

Usage
-----

1. Clone the repo: `git clone https://github.com/zhengjia/vagrant-rbenv.git`
2. Use Vagrant box Precise64]: `vagrant box add precise64 http://files.vagrantup.com/precise64.box`
3. Initialize the git submodule: `git submodule init` `git submodule update`
4. `vagrant up`


# After `vagrant up`

## Register App For Github OAuth

Go to https://github.com/settings/applications and register your
application to get the application keys needed for OAuth.

- URL: `http://localhost:9292`
- Callback: `http://localhost:9292`

## Add the GitHub application configuration settings to the .env file

ssh into the vm 
`vagrant ssh`

vim huboard/.env
configure the two missing keys

GITHUB_CLIENT_ID=<yours>
GITHUB_SECRET=<yours>

## Start up the huboard web application

 1. `vagrant ssh`
 2. `cd huboard`
 3. `bin/foreman run shotgun -p 9292 -o 0.0.0.0`

You should now be able to reach huboard from your host machines browser at
http://localhost:9292



# License

The MIT License (MIT)
Copyright (c) 2012-2013 Ryan Rauh

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

