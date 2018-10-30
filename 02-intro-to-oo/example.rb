require 'pry'

$dont_use_me = "bad"

# basketball has players
players_array = [{
  name: "Michael Jordan",
  retired: true,
  team: ["Chicago Bulls", "Washington Wizards", "Chicago Whitesocks", "Toon Squad"]
},
{
  name: "MJ Jordan",
  team: ["Chicago Bulls", "Washington Wizards", "Chicago Whitesocks", "Toon Squad"],
  age: 100000000
},
0
]

def how_many_teams(team)
  team.length
end

def current_status(name, retired)
  if retired
    is_retired = "retired"
  else
    is_retired = "not retired"
  end
  puts "#{name} is #{is_retired}."
end

current_status(players_array.first[:name], players_array.first[:retired])

# name_player_2 = "Kyrie Irving"
# retired_player_2
# team_player_2

# name: "Michael Jordan",
# retired: true,
# team: ["Chicago Bulls", "Washington Wizards", "Chicago Whitesocks", "Toon Squad"]
# Blueprint for a player!
class Player
  attr_accessor :retired, :team
  # attr_writer :name, :retired, :team
  attr_reader :name, :ssn #, :retired, :team

  @@all = [] # class variable made when the code is read

  # binding.pry # 1

  def self.all
    binding.pry # 3
    @@all
  end

  # new calls this initialize method
  def initialize(name, retired, team)
    @name = name
    @retired = retired
    @team = team

    # binding.pry
    @@all << self
  end

  def how_many_teams
    binding.pry # 2
    @team.length
  end

  def current_status
    if @retired
      is_retired = "retired"
    else
      is_retired = "not retired"
    end
    puts "#{@name} is #{is_retired}."
  end

  # setter method
  # instance method
  # def name=(players_name)
  #   # different scope here
  #   # I'm inside of the p1 instance
  #   @name = players_name
  # end

  # getter method
  # def name
  #   # p2
  #   @name
  # end

  # setter method
  # def retired=(is_retired)
  #   @retired = is_retired
  # end

  # getter method
  # def retired
  #   @retired
  # end

  # setter method
  # def team=(players_team)
  #   @team = players_team
  # end

  # getter method
  # def team
  #   @team
  # end
end

p1 = Player.new("MJ", true, ["t1"])
p2 = Player.new("Krie", false, ["t1", "t2"])
binding.pry


# scope = where am i currently running
# main program
puts "0"
