require 'pry'

  def game_hash
  {
    :home => { :team_name => "Charlotte Hornets",
               :colors => ["Turquoise", "Purple"],
               :players => [
                 {:player_name => "Jeff Adrien",
                  :number => 4,
                  :shoe => 18,
                  :points => 10,
                  :rebounds => 1,
                  :assists => 1,
                  :steals => 2,
                  :blocks => 7,
                  :slam_dunks => 2
                 },
                 {:player_name => "Bismak Biyombo",
                  :number => 0,
                  :shoe => 16,
                  :points => 12,
                  :rebounds => 4,
                  :assists => 7,
                  :steals => 7,
                  :blocks => 15,
                  :slam_dunks => 10
                 },
                 {:player_name => "DeSagna Diop",
                  :number => 2,
                  :shoe => 14,
                  :points => 24,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 4,
                  :blocks => 5,
                  :slam_dunks => 5
                 },
                 {:player_name => "Ben Gordon",
                  :number => 8,
                  :shoe => 15,
                  :points => 33,
                  :rebounds => 3,
                  :assists => 2,
                  :steals => 1,
                  :blocks => 1,
                  :slam_dunks => 0
                 },
                 {:player_name => "Brendan Haywood",
                  :number => 33,
                  :shoe => 15,
                  :points => 6,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 22,
                  :blocks => 5,
                  :slam_dunks => 12
                 }
               ]
            },
    :away => { :team_name => "Brooklyn Nets",
               :colors => ["Black", "White"],
               :players => [
                 {:player_name => "Alan Anderson",
                  :number => 0,
                  :shoe => 16,
                  :points => 22,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks => 1
                 },
                 {:player_name => "Reggie Evans",
                  :number => 30,
                  :shoe => 14,
                  :points => 12,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 12,
                  :blocks => 12,
                  :slam_dunks => 7
                 },
                 {:player_name => "Brook Lopez",
                  :number => 11,
                  :shoe => 17,
                  :points => 17,
                  :rebounds => 19,
                  :assists => 10,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks => 15
                 },
                 {:player_name => "Mason Plumlee",
                  :number => 1,
                  :shoe => 19,
                  :points => 26,
                  :rebounds => 12,
                  :assists => 6,
                  :steals => 3,
                  :blocks => 8,
                  :slam_dunks => 5
                 },
                 {:player_name => "Jason Terry",
                  :number => 31,
                  :shoe => 15,
                  :points => 19,
                  :rebounds => 2,
                  :assists => 2,
                  :steals => 4,
                  :blocks => 11,
                  :slam_dunks => 1
                 }
               ]
    }
  }
end


def num_points_scored(player_name)
  x = 0
    game_hash[:home][:players].each do |players_hash|
        if players_hash[:player_name] == player_name
         x = players_hash[:points]
        end
    end #end do 120
    game_hash[:away][:players].each do |players_hash|
        if players_hash[:player_name] == player_name
        x =  players_hash[:points]
        end
    end #end do 120 
    x
end


def shoe_size(player_name)
    x = 0
    game_hash[:home][:players].each do |players_hash|
        if players_hash[:player_name] == player_name
         x = players_hash[:shoe]
        end
    end #end do 
    game_hash[:away][:players].each do |players_hash|
        if players_hash[:player_name] == player_name
        x =  players_hash[:shoe]
        end
    end #end do  
    x
 
end

def team_colors(team_name)
    if game_hash[:home][:team_name] == team_name
      game_hash[:home][:colors]      
    elsif game_hash[:away][:team_name] == team_name  
      game_hash[:away][:colors]       
    end
  
end

def team_names
  return_array = []
  return_array << game_hash[:home][:team_name]
  return_array << game_hash[:away][:team_name]

end

def player_numbers(team)
  return_array = []
  if game_hash[:home][:team_name] == team
    game_hash[:home][:players].each do |players_hash|
      return_array << players_hash[:number]
    end #end do 
  elsif game_hash[:away][:team_name] = team
    game_hash[:away][:players].each do |players_hash|
      return_array << players_hash[:number]
    end #end do 
  end#end if
  return_array.sort
end


def player_stats(player_name)
  x = {}
    game_hash[:home][:players].each do |players_hash|
        if players_hash[:player_name] == player_name
         x = players_hash
        end
    end #end do 
    game_hash[:away][:players].each do |players_hash|
        if players_hash[:player_name] == player_name
        x =  players_hash
        end
    end #end do  
  x.delete(:player_name)
  x
end




def big_shoe_rebounds
  current_high_number = 0
  highest_shoe = 0
  game_hash[:home][:players].each do |players_hash|
    if players_hash[:shoe] > current_high_number
        current_high_number = players_hash[:shoe]
        highest_shoe = players_hash[:rebounds]
    end
    
  end
  game_hash[:away][:players].each do |players_hash|
    if players_hash[:shoe] > current_high_number
        current_high_number = players_hash[:shoe]
        highest_shoe = players_hash[:rebounds]
    end
    
  end
  highest_shoe
end 
