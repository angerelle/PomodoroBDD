### Melomel - Flex BDD


Download SWCs from <https://github.com/benbjohnson/melomel/downloads> - one is the Melomel SWC, one is a stub library to stub out the Melomet stuff for security in production application

[Declare Melomel](https://github.com/benbjohnson/melomel/wiki) in your application

Create directory called `features` at the same level as `src` and then two subdirectories, `features/step_definitions` and `features/support`.

Copy the [`env.rb`](https://github.com/benbjohnson/melomel-examples/blob/master/cuke-spark/features/support/env.rb) to `features/support` and then change the `@driver.navigate.to` line so that it points to your SWF (with `/` being the root of your project, e.g. point it to `target/myTest.swf` 

Make sure you have Ruby installed and also install the [Ruby Dev kit](http://rubyinstaller.org/downloads) and add its `bin` directory to your `PATH`

Follow [the instructions](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit) to install the dev kit.

Download [chromedriver](http://code.google.com/p/chromedriver/downloads/list) (you also need Chrome installed) 

Save this [Gemfile](https://github.com/benbjohnson/melomel-examples/blob/master/Gemfile) in your project root (this contains the dependencies for Melomel and allows bundler to work out which gemfiles it needs)


    gem update --system
    gem install bundler
    bundle install

Make sure that you have set `FLEX_HOME`

Create a Ruby file `http.rb` in the project root

    #!/usr/bin/ruby
    require 'rubygems'
    require "bundler/setup"
    require 'sinatra'

    set :public_folder, File.dirname(__FILE__)

Start up Sinatra using this script

    ruby http.rb

Write your feature file and then run `cucumber` from the project root.
