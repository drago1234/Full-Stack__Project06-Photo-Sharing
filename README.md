# Project name: Freelance Canvas Web Application
### Description

The orginial idea was derived from the 500 px website, a photo sharing website for professional photographers. Our webiste extend the original feature and allow the users to present their work to the internet. The way to use this website is pretty easy. As a public user, you can visite all the work that had posted by the current users. However, in order to interact with the authoer (such as leave a comment, like..), you must register an account to be a valid user. To register an account, you need to click the login button in the top right corner and fill out all required information. After the registration, you have the right to post your work and see all you followers and who you are following as well. In the Post page, you can see all the posts that you had published. In the Profile page, you can modify you information and update them. To create a new page, you need to go to page file and click "New Post", then you can create a new post.

### How to get start?
#### Environment setup
```ruby
$ bundle update
$ bundle install --> an ruby library management tool to update and install the required gems(lib)
$ rails s --> open the application in the local server
```

#### Create an account
1. Click the sign up button
2. Fillout correct information
3. An email would send to you mailbox. Remind that the link in the confirmation email is using prefix: 'localhost:3000/'. Please click that link on your localhost. Don't click that on your phone as it's not deployed to a server yet. If the link doesn't work (you cannot access an localhost url, then you need to do the following
```ruby
  $ rails c
  >> User.find_by(name: "example").confirm
  >> exit
  $ rails s
```
4. After confirm, login the website with correct password
5. Explore various feature, which includes Post a photo, Follow other users, like a public post, make a comment, Update profile, and etc..

#### Install imagemagick
You need to install this program in order to use the "post" feature in this app
1. If you're on Mac OS X, you'll want to run the following with Homebrew:
```bash
brew install imagemagick
```

2. If you are on Ubuntu (or any Debian base Linux distribution), you'll want to run the following with apt-get:
```bash
sudo apt-get install imagemagick -y
```
3. If you are on Window10, you'll want to do the following:
* Download the ImageMagick binary install package from one of the ftp sites listed on  the [ImageMagick](https://imagemagick.org/script/download.php) download page. The file will be named similar to ImageMagick-6.9.12-13-Q16-HDRI-x64-dll.exe
* Test the success of installation, run following command in cmd
```bash
convert -version
```
* And you should see some similar 
```
Version: ImageMagick 7.0.8-57 Q16 x64 2019-07-27 http://www.imagemagick.org
Copyright: Copyright (C) 1999-2018 ImageMagick Studio LLC
License: http://www.imagemagick.org/script/license.php
Visual C++: 180040629
Features: Cipher DPC HDRI OpenCL
Delegates (built-in): bzlib cairo flif freetype gslib heic jng jp2 jpeg lcms lqr lzma openexr pangocairo png ps raw rsvg tiff webp xml zlib
```
* Then, you need to find its lib path and include folder path, and run the command similar as follow before running ```bundle update```:
```bash
gem install mimemagic --platform=ruby -- --with-opt-lib="C:\Program Files\ImageMagick-6.9.12-Q16-HDRI\lib" --with-opt-include="C:\Program Files\ImageMagick-6.9.12-Q16-HDRI\include"
```


(More clear [Instruction](https://medium.com/ruby-on-rails-web-application-development/install-rmagick-gem-on-windows-7-8-10-imagemagick-6-9-4-q16-hdri-5492c3fef202))




