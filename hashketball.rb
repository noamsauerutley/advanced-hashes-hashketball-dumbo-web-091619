# Write your code here!
require "pry"

def game_hash
game_hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => %w(Black White),
    :players => {
      "Alan Anderson" => {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },
      "Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },
      "Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      },
      "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
    }
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => %w(Turquoise Purple),
    :players => {
      "Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      },
      "Bismack Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
      },
      "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },
      "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      "Kemba Walker" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
      }
    }
  }
}
  return game_hash
end


def num_points_scored(name)
  hash = game_hash
  hash.each do |base, info|
    info.each do |player, stats|
      if stats.include?(name)
        return hash[base][player][name][:points]
      end
    end
  end
end

def shoe_size(name)
  hash = game_hash
  hash.each do |base, info|
    info.each do |player, stats|
      if stats.include?(name)
        return hash[base][player][name][:shoe]
      end
    end
  end
end

def team_colors(team_name)
  colors_array = []
  hash = game_hash
  hash.each do |base, info|
    if info[:team_name].include?(team_name)
      info[:colors].each do |color|
        colors_array.push(color)
      end
    end
  end
  colors_array
end

def team_names
  hash = game_hash
  names_array = []
  hash.each do |base, info|
    names_array.push(info[:team_name])
  end
  names_array
end

def player_numbers(team_name)
  hash = game_hash
  numbers_array = []
  hash.each do |base, info|
    if info[:team_name].include?(team_name)
      info[:players].each do |player, stats|
        numbers_array.push(stats[:number])
      end
    end
  end
  numbers_array
end

def player_stats(name)
  hash = game_hash
  hash.each do |base, info|
    info[:players].each do |player, stats|
      if info[:players][player].include?(name)
        return stats
      end
    end
  end
end

def big_shoe_rebounds

end

def most_points_scored

end

def winning_team

end

def player_with_longest_name

end

def long_name_steals_a_ton

end
