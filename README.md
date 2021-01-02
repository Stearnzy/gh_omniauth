# GitHub OmniAuth

## Purpose
The intention of this repo is to demonstrate my practice using OAuth, particularly the OmniAuth GitHub gem.  This simple Rails app gives the option for a user to log in to the app using their GitHub account, which then redirects them to a page displaying the names of all of their public and private repos associated with that account.  Each repo listed is a link to the GitHub repo page for that particular repository.


![functionality gif](/public/omniauth.gif)


## System Requirements
This repository is intended for use with Mac OS.

This uses Ruby 2.5.3 and Rails 5.2.4.3, with PostgreSQL for the database.

### Local Setup
To setup locally, follow these instructions:
  * __Fork & Clone Repo__
    * Fork this repo to your own GitHub account.
    * Create a new directory locally or `cd` into whichever directory you wish to clone down to.
    * Enter `git clone git@github.com:<<YOUR GITHUB USERNAME>>/gh_omniauth.git`
  * __Install Gems__
    * Run `bundle install` to install all gems in the Gemfile
    * Run `figaro install`
  * __Set Up Local Database__
    * Run `rails db:create`

### Use
In the Terminal, `cd` into this directory and fire up `rails server`.
In your browser, navigate to http://localhost:3000
Click the `Login with GitHub` button and enter in your valid GitHub email and password.

That's it! Explore your repositories, and happy coding!
