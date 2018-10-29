require 'pry'

# puts "pry #1"
# binding.pry

# <= pound, octothorpe, hash, number sign, crunch

def game_hash
  # puts "pry #3"
  # binding.pry

  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# puts "pry #2"
# binding.pry

# get an array of all the players combined
  # get the away players
  # get the home players
  # then combine them =>
    # merge method
    # create empty array and push those
    # map?
def all_players # find_all_players # merge_all_players, all_players_array,
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  home_players + away_players
end

# name, player_name, player
def num_points_scored(player_name)
  # find the player data for the provided name
    # get full data <==
    # each, map, select, find
    #  9     0      2      6
    #        0      1      everyone else
    # test the name matches player_name
    # points = 0
    # all_players.each do |player_data| # player, player_data, player_hash
    #   # binding.pry
    #   if player_data[:player_name] == player_name
    #     # find the points data within the player data
    #     # return player_data[:points]
    #     points = player_data[:points]
    #   end
    # end
    # points

    # returns the first one that matches the condition
    # found_player = all_players.find do |player_data|
    #   player_data[:player_name] == player_name
    # end

    # found_player = player_stats(player_name)
    player_stats(player_name)[:points]
  # if "Jeff Adrien" == player_name
  #   10
  # elsif "Bismak Biyombo" == player_name
  #   12
  # end
end

def shoe_size(player_name)
  # find the player
    # get all the players
    # find the one that matches player_name
  # found_player = all_players.find do |player_data|
  #   player_data[:player_name] == player_name
  # end

  found_player = player_stats(player_name)
  # get the shoe size
  found_player[:shoe]
end


# copy paste 1x, x2 hint to abstraction
def player_stats(player_name) # player_stats, finding_player
  all_players.find do |player_data|
    player_data[:player_name] == player_name
  end
end
# binding.pry

# def adsfdf
#   all_players.each do |player|
#     if player[:name] == "Bismak Biyombo"
#       return "good"
#     end
#   end
# end

def instructors
  [
    {
      name: "Mike",
      cats: true,
      age: 33
    },
    {
      name: "Steven",
      cats: true,
      age: 38
    },
    {
      name: "Laura",
      cats: false,
      age: 16
    },
    {
      name: "Vicky",
      cats: false,
      age: 9001
    }
  ]
end

# map, select
# pick out the instructors who like cats
# [
#   {
#     name: "Mike",
#     cats: true,
#     age: 33
#   },
#   {
#     name: "Steven",
#     cats: true,
#     age: 38
#   }
# ]
cat_people = instructors.select do |instructor|
  # if instructor[:cats] == true
  #   true
  # else
  #   false
  # end
  # instructor[:cats] == true
  instructor[:cats]
end

# cat_people.map do |instructor|
#   instructor[:name]
# end

# get the names of all the instructors as an array of strings
# ["Mike", "Steven", "Laura", "Vicky"]
instructor_names = instructors.map do |instructor|
  instructor[:name]
end

# instructors_array = instructors.each do |instructor|
#   instructor[:name]
# end


puts "BOOOOO!"
