# Project 6: Freelance Canvas Web Application

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


### Description

The orginial idea was derived from the 500 px website, a photo sharing website for professional photographers. Our webiste extend the original feature and allow the users to present their work to the internet. The way to use this website is pretty easy. As a public user, you can visite all the work that had posted by the current users. However, in order to interact with the authoer (such as leave a comment, like..), you must register an account to be a valid user. To register an account, you need to click the login button in the top right corner and fill out all required information. After the registration, you have the right to post your work and see all you followers and who you are following as well. In the Post page, you can see all the posts that you had published. In the Profile page, you can modify you information and update them. To create a new page, you need to go to page file and click "New Post", then you can create a new post.
