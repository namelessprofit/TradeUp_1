# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'ffaker'


p "HELLO IM THE SEED"

User.delete_all

User.create(users_data = [
  {:username => "jesse", :email => "jesse@yahoo.com", :location => 94618, :rating => 10, :rating_count => 1, :password => "ljksdfjlka", :background_color=> 'blue', :image=> "http://i.imgur.com/IulSm39.jpg"},
  {:username => "archy", :email => "archy@yahoo.com", :location => 46636, :rating => 2, :rating_count => 2, :password => "ljksdfjlka",  :background_color=> 'black', :image=> "http://i.imgur.com/IulSm39.jpg"},
  {:username => "roman", :email => "roman@yahoo.com", :location => 34245, :rating => 10, :rating_count => 5, :password => "ljksdfjlka",  :background_color=> 'red', :image=> "http://i.imgur.com/IulSm39.jpg"},
  {:username => "john", :email => "john@yahoo.com", :location => 94618, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> 'yellow', :image=> "http://i.imgur.com/IulSm39.jpg"},
  {:username => "jim", :email => "jim@yahoo.com", :location => 94618, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> 'yellow', :image=> "http://i.imgur.com/IulSm39.jpg"},
  {:username => "james", :email => "james@yahoo.com", :location => 94618, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> 'yellow', :image=> "http://i.imgur.com/IulSm39.jpg"},
  {:username => "afgan", :email => "afgan@yahoo.com", :location => 94618, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> 'yellow', :image=> "http://i.imgur.com/IulSm39.jpg"},
  {:username => "gertrud", :email => "gertrud@yahoo.com", :location => 94618, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> 'yellow', :image=> "http://i.imgur.com/IulSm39.jpg"},
  {:username => "yummz", :email => "yumzz@yahoo.com", :location => 94618, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> 'yellow', :image=> "http://i.imgur.com/IulSm39.jpg"},
  {:username => "gorp", :email => "gorp@yahoo.com", :location => 94618, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> 'yellow', :image=> "http://i.imgur.com/IulSm39.jpg"}

  ])

  Item.delete_all

  Item.create(items_data = [
    {:title => "tv", :description =>"super sick cool ya", :is_available=> true,:group => 3, :category => 1, :condition => 3,:user_id => 1, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
    {:title => "radio", :description =>" best in the biz bro", :is_available=> true,:group => 3, :category => 1, :condition => 2,:user_id => 2, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
    {:title => "massage", :description =>"i give the best russian massage", :is_available=> true,:group => 1,  :category => 6, :condition => 1,:user_id => 3, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
    {:title => "hats", :description =>"hats rule aw ya", :is_available=> true,:group => 3, :category => 3, :condition => 2,:user_id => 4, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
    {:title => "Day with Mick Jagger", :description =>"generic description", :is_available=> true,:group => 2, :category => 1, :condition => 5,:user_id => 2, :image => "https://d8a8a12b527478184df8-1fd282026c3ff4ae711d11ecc95a1d47.ssl.cf1.rackcdn.com/wp-content/uploads/2013/05/items-always-have-travel-michalowicz-open-forum-embed2.jpg"},
    {:title => "Fun in the sun", :description =>"so cool", :is_available=> true,:group =>2 , :category => 3, :condition => 1,:user_id =>2 , :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "Run away with me", :description =>"itl be great", :is_available=> true,:group => 2, :category => 2, :condition => 1,:user_id => 1, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "Play catch with Tom Hanks", :description =>"hes awesome", :is_available=> true,:group => 2, :category => 4, :condition => 1,:user_id => 6, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "Have an egg toss", :description =>"eggs are cool", :is_available=> true,:group => 2, :category => 5, :condition => 1,:user_id => 2, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "clean your deck", :description =>"so clean", :is_available=> true,:group => 1, :category => 1, :condition => 1,:user_id => 6, :image => "https://pimg.tradeindia.com/00978291/b/1/Decorative-Items.jpg"},
    {:title => "Build an ofice", :description =>"out of concrete", :is_available=> true,:group => 1, :category => 2, :condition => 1,:user_id => 8, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "write a website", :description =>"im a nerd", :is_available=> true,:group => 1, :category => 3, :condition => 1,:user_id => 1, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "babysit your child", :description =>"i love barney", :is_available=> true,:group => 1, :category => 4, :condition => 1,:user_id => 4, :image => "http://cdn1-www.craveonline.com/assets/mandatory/legacy/2016/02/man_file_1064762_1banana.jpg"},
    {:title => "Cook you mac and cheese", :description =>"super cheesy", :is_available=> true,:group => 1, :category => 5, :condition => 1,:user_id => 9, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "serenade you with a mariachi band", :description =>"es loco", :is_available=> true,:group => 1, :category => 7, :condition => 1,:user_id => 1, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "My comfy chair", :description =>"so comfy its crazy", :is_available=> true,:group => 3, :category => 2, :condition => 3,:user_id => 2, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "Dirtbike", :description =>"vx800 with usper cahrged booster seats", :is_available=> true,:group => 3, :category => 4, :condition => 1,:user_id => 8, :image => "https://cdn.aarp.net/content/dam/aarp/money/budgeting_savings/2015-07/1140-Downsizing-Ditch-these-10-items-big-house.imgcache.rev10f2ea3b0b653b18e096b7495968ea34.web.945.544.jpg"},
    {:title => "cottage in humboldt", :description =>"ya man", :is_available=> true,:group => 3, :category => 5, :condition => 2,:user_id => 6, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "Tom hanks socks", :description =>"smell so good", :is_available=> true,:group => 3, :category => 6, :condition => 1,:user_id => 10, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "Baseball glove", :description =>"real leather brah", :is_available=> true,:group => 3, :category => 7, :condition => 2,:user_id => 10, :image => "http://3.imimg.com/data3/GV/AI/MY-4676303/home-decorative-items-250x250.jpg"},
    {:title => "baby rattle", :description =>"very fun toy", :is_available=> true,:group => 3, :category => 8, :condition => 3,:user_id => 3, :image => "http://i.imgur.com/WjGeU27.jpg"},
    {:title => "my guitar", :description =>"hendrix all day", :is_available=> true,:group => 3, :category => 9, :condition => 1,:user_id => 1, :image => "https://s-media-cache-ak0.pinimg.com/originals/f5/9b/1b/f59b1b0cc430702e82dea90780d7f87d.gif"},
    {:title => "defend you in a legal battle", :description =>"im a lawyer", :is_available=> true,:group => 3, :category => 10, :condition => 1,:user_id => 9, :image => "http://media.gq.com/photos/5813d3f63c8d8f500462871f/master/pass/New-Arrivals-03.jpg"},
    {:title => "Potted plants", :description =>"ficus and fern", :is_available=> true,:group => 3, :category => 11, :condition => 2,:user_id => 1, :image => "http://sugartin.info/wp-content/uploads/2013/11/logo.png"},
    {:title => "cheese", :description =>"mmmm", :is_available=> true,:group => 3, :category => 12, :condition => 1,:user_id => 7, :image => "https://pbs.twimg.com/profile_images/675002642196729857/A0OpcJpA.png"}


    ])

Offer.delete_all

Favorite.delete_all
