# Project 6: Freelance Canvas Web Application

### Roles 
   - Pranay: Overall Manager
   - Yi: Implementation Manager 
   - Trevor: Test Manager 
   - Zhengqi: Documentation Manager 

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

1. If you're on Mac OS X, you'll want to run the following with Homebrew:
```bash
brew install imagemagick
```

2. If you are on Ubuntu (or any Debian base Linux distribution), you'll want to run the following with apt-get:
```bash
sudo apt-get install imagemagick -y
```
3. If you are on Window10, you'll want to do the following:
* Download the ImageMagick binary install package from one of the ftp sites listed on  the [ImageMagick](https://imagemagick.org/script/download.php) download page. The file will be named similar to ImageMagick-7.0.8-57-Q16-x64-static.exe
* Test the success, run following command in cmd
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

(More clear [Instruction](https://medium.com/ruby-on-rails-web-application-development/install-rmagick-gem-on-windows-7-8-10-imagemagick-6-9-4-q16-hdri-5492c3fef202))



### Description

The orginial idea was derived from the 500 px website, a photo sharing website for professional photographers. Our webiste extend the original feature and allow the users to present their work to the internet. The way to use this website is pretty easy. As a public user, you can visite all the work that had posted by the current users. However, in order to interact with the authoer (such as leave a comment, like..), you must register an account to be a valid user. To register an account, you need to click the login button in the top right corner and fill out all required information. After the registration, you have the right to post your work and see all you followers and who you are following as well. In the Post page, you can see all the posts that you had published. In the Profile page, you can modify you information and update them. To create a new page, you need to go to page file and click "New Post", then you can create a new post. 

### Roles

* Overall Project Manager: Pranay Byreddy
* Coding Manager: Zhengqi Dong 
* Testing Manager: Trevor Shirey
* Documentation: Yi Zhao

### Contributions: 

* Pranay Byreddy: Implemented form partial for comments. Implemented controller, view for comments, added validations, fixed rediretion issues. Added front end design using bootstrap for homepage.
* Zhengqi Dong: 
   - Implemeted the View for layout (located in layout _header.html.erb, _footer.html.erb, _head.html.erb, application.html.erb, in 'view/layout/')
   - Implemented the users model and controller(Created in controllers/user_controller.rb, models/user.rb), and add the validation checking for username, email, password confirmation, and produce pretty warning messages.
   - Added stylesheet for the front page with bootstrap (locates in ./assets/stylesheets/custom.css.scss)
   - Wrote and did the integration test of the routes for welcome, and the model and controller for users.
* Trevor Shirey: Implemented Like MVC using general implementation. 
* Yi Zhao: 
   - Implemented Devise User MVC. (Email verification, adding profile to user, adding customized column on User. Adding association with like, post, follow and corresponding helper functions. Adding all views into '/views/users' to make front end looks nice and clean.)
   - Implemented Follow(Relationship) MVC. (Create all views in '/views/relationships'. Create '.js.erb' file to implement follow (Ajax implementation). Create controller and model for relationship to implemented following functionality.) . 
   - Implemented Post MVC. (Create all views in '/views/post'. Implemented model and controller for post.)
   - Implemented Like MVC (Ajax implementation). (Create create.js.erb and destroy.js.erb in '/views/likes/'. Create association with post & user. Implemented Model and Controller.)
   - Modified Comment MVC. (Associate comments with user, add verifications on delete button, change views (locates in "/views/posts/show") to make it looks nice.)
   - Adding Stylesheets to all views written to make it looks nice.

