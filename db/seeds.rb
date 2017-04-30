# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'ffaker'


p "HELLO IM THE SEED"
Offer.delete_all

Favorite.delete_all

Item.delete_all

Item.create(items_data = [
  {:title => "tv", :description =>"super sick cool ya", :is_available=> true,:group => "item", :itemcategory => "auto", :user_id => 1, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
  {:title => "radio", :description =>" best in the biz bro", :is_available=> true,:group => "item", :itemcategory => "furniture", :user_id => 2, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
  {:title => "massage", :description =>"i give the best russian massage", :is_available=> true,:group => "service",  :servicecategory => "web", :user_id => 3, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
  {:title => "hats", :description =>"hats rule aw ya", :is_available=> true,:group =>"experience", :experiencecategory => "sports", :user_id => 4, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},


  ])

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
