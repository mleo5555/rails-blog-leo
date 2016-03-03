# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  {:username => "bigleo55", :password => "password", :email => "mleo@mail.bradley.edu"},
  {:username => "raleo3", :password => "password", :email => "raleo3@gmail.com"},
  {:username => "dirtypants", :password => "password", :email => "dp@gmail.com"},
  {:username => "brendol11", :password => "password", :email => "brendol11@gmail.com"},
]

User.create!(users)

posts = [
  {:title => "OMG Falco is OP halp!", :content => "Falco's neutral game is insanely strong. Can somebody explain how I get grabs as Marth against an aggressive falco? Thanks!", :user_id => 1, :karma => 0},
  {:title => "How to space optimally with Marth?", :content => "I watch PPMD space really well with Marth but what does he do that makes him a god? I try his tactics but I always fail and get punished.", :user_id => 2, :karma => 0},
  {:title => "Fox shine is seriously dumb..", :content => "1 frame move, invincible, kills off stage, need I say more? Fox is so lame.. ban him please", :user_id => 3, :karma => 0},
  {:title => "20GX tech chase guide", :content => "I am creating a guide for falcon to help all of my fellow falcons improve their tech chasing game! It is a hard technique to learn but I promise it is worth the read. Coming soon!", :user_id => 4, :karma => 0},
]

Post.create!(posts)

comments = [
  {:content => "It isn't easy. Watch m2k vs any falco and watch how he gets grabs. Working on your powershield game is important, also work on smart fairs out of shield. Both set up free grabs at most percentages but take a while to learn.", :user_id => 4, :post_id => 1},
  {:content => "Hey! Marth is so good at spacing because of his disjointed hit box. My advice is don't rely too much on his f smash as it becomes predictable. Develop a dash dance heavy neutral and aim for grabs and down tilts.", :user_id => 3, :post_id => 2},
  {:content => "Lol, fox is beatable at all levels, keep practicing bro.", :user_id => 2, :post_id => 3},
  {:content => "Can't wait! Love me some falcon tech chases.", :user_id => 1, :post_id => 4},
]

Comment.create!(comments)
