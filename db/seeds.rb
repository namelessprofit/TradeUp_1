# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "HELLO IM THE SEED"

User.delete_all

User.create(users_data = [
  {:username => "jesse", :email => "jesse@yahoo.com", :location => 94618, :rating => 10, :rating_count => 1},
  {:username => "archy", :email => "archy@yahoo.com", :location => 46636, :rating => 2, :rating_count => 2},
  {:username => "roman", :email => "roman@yahoo.com", :location => 34245, :rating => 10, :rating_count => 5},
  {:username => "megan", :email => "megan@yahoo.com", :location => 94618, :rating => 9, :rating_count => 1}

  ])

  Item.delete_all

  Item.create(items_data = [
    {:title => "tv", :description =>"super sick cool ya", :is_available=> true,  :category => 3, :condition => 3,:user_id => 1, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
    {:title => "radio", :description =>" best in the biz bro", :is_available=> true, :category => 3, :condition => 2,:user_id => 2, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
    {:title => "massage", :description =>"i give the best russian massage", :is_available=> true,  :category => 2, :condition => 1,:user_id => 3, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"},
    {:title => "hats", :description =>"hats rule aw ya", :is_available=> true, :category => 1, :condition => 2,:user_id => 4, :image => "https://4.bp.blogspot.com/-oVal31uHoGA/V_dXcXKf79I/AAAAAAAAAVQ/mJTZQo8kq84mOzf1jzVU5PF58-tcVBtUwCLcB/s1600/face-smile.png"}

    ])

Offer.delete_all

Favorite.delete_all
