# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'ffaker'


p "HELLO IM THE SEED"

User.create(users_data = [
  {:username => FFaker::InternetSE.login_user_name, :email => FFaker::Internet.email, :location => FFaker::AddressUS.zip_code, :rating => 10, :rating_count => 1, :password => "ljksdfjlka", :background_color=> "#"+FFaker::Color.hex_code, :image=> FFaker::Avatar.image},
  {:username => FFaker::InternetSE.login_user_name, :email => FFaker::Internet.email, :location => FFaker::AddressUS.zip_code, :rating => 2, :rating_count => 2, :password => "ljksdfjlka",  :background_color=> "#"+FFaker::Color.hex_code, :image=> FFaker::Avatar.image},
  {:username => FFaker::InternetSE.login_user_name, :email => FFaker::Internet.email, :location => FFaker::AddressUS.zip_code, :rating => 10, :rating_count => 5, :password => "ljksdfjlka",  :background_color=> "#"+FFaker::Color.hex_code, :image=> FFaker::Avatar.image},
  {:username => FFaker::InternetSE.login_user_name, :email => FFaker::Internet.email, :location => FFaker::AddressUS.zip_code, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> "#"+FFaker::Color.hex_code, :image=> FFaker::Avatar.image},
  {:username => FFaker::InternetSE.login_user_name, :email => FFaker::Internet.email, :location => FFaker::AddressUS.zip_code, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> "#"+FFaker::Color.hex_code, :image=> FFaker::Avatar.image},
  {:username => FFaker::InternetSE.login_user_name, :email => FFaker::Internet.email, :location => FFaker::AddressUS.zip_code, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> "#"+FFaker::Color.hex_code, :image=> FFaker::Avatar.image},
  {:username => FFaker::InternetSE.login_user_name, :email => FFaker::Internet.email, :location => FFaker::AddressUS.zip_code, :rating => 9, :rating_count => 4, :password => "ljksdfjlka",  :background_color=> "#"+FFaker::Color.hex_code, :image=> FFaker::Avatar.image},
  {:username => FFaker::InternetSE.login_user_name, :email => FFaker::Internet.email, :location => FFaker::AddressUS.zip_code, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> "#"+FFaker::Color.hex_code, :image=> FFaker::Avatar.image},
  {:username => FFaker::InternetSE.login_user_name, :email => FFaker::Internet.email, :location => FFaker::AddressUS.zip_code, :rating => 9, :rating_count => 1, :password => "ljksdfjlka",  :background_color=> "#"+FFaker::Color.hex_code, :image=> FFaker::Avatar.image},

])
p 'made the USERS!'
#

Item.create(items_data = [

  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group => "item", :itemcategory => "auto", :user_id => 1, :image => "http://cdn-4.nikon-cdn.com/e/Q5NM96RZZo-YRYNeYvAi9beHK4x3L-8mX69Pbfqns6v7oXCgLWTph852P5lkBqRc/Views/25452_D5000_34r.png"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group => "item", :itemcategory => "furniture", :user_id => 2, :image => "https://img.buzzfeed.com/buzzfeed-static/static/2014-01/campaign_images/webdr03/31/13/are-these-mind-blowing-products-real-1-13846-1391193694-12_big.jpg"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group => "item", :itemcategory => "auto", :user_id => 3, :image => "http://i.imgur.com/DRVkkhB.jpg"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group =>"item", :itemcategory => "real_estate", :user_id => 4, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group => "experience", :experiencecategory => "music", :user_id => 5, :image => "http://www.hlgjyl888.com/data/wallpapers/183/WDF_2221711.png"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group => "experience", :experiencecategory => "travel", :user_id => 6, :image => "https://img.buzzfeed.com/buzzfeed-static/static/2014-01/campaign_images/webdr03/31/13/are-these-mind-blowing-products-real-1-13846-1391193694-12_big.jpg"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group => "experience", :experiencecategory => "outdoors", :user_id => 7, :image => "http://www.lifeadvancer.com/wp-content/uploads/2016/01/Remarkable-Changes-After-Traveling.jpg"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group =>"experience", :experiencecategory => "sports", :user_id => 8, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group => "service", :servicecategory => "web", :user_id => 4, :image => "https://pbs.twimg.com/profile_images/664484303527657472/5D6n5rBE.jpg"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group => "service", :servicecategory => "childcare", :user_id => 6, :image => "https://img.buzzfeed.com/buzzfeed-static/static/2014-01/campaign_images/webdr03/31/13/are-these-mind-blowing-products-real-1-13846-1391193694-12_big.jpg"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group => "service", :servicecategory => "health", :user_id => 3, :image => "http://www.beyoupromise.org/wp-content/uploads/2015/05/healthy-heart.jpg"},
  {:title => FFaker::Product.product, :description =>FFaker::DizzleIpsum.sentence, :is_available=> true, :group =>"service", :servicecategory => "construction", :user_id => 2, :image => "http://saintpetersblog.com/wp-content/uploads/2016/01/construction-laws-1.jpg"}
])

p 'made the ITEMS!'
