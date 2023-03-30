class Team 
  attr_reader :team_name, :city, :roster, :long_term_players, :player_count
  def initialize(team_name, city)
    @team_name = team_name
    @city = city 
    @roster = []
    
  end

  def player_count 
   roster.length 
  end

  def add_player(player)
    roster << player 
  end

  def long_term_players
    roster.select do |player|
      player.contract_length > 24
    end
  end

  def short_term_players 
    roster.select do |player|
      player.contract_length < 25
    end
  end 

  def total_value 
    roster.map do |player|
    player.total_cost 

    #roster.sum do |player|
    #player.total_cost 
    
    end.sum 
  end

  def details 
    {
      "total_value" => total_value,
      "player_count" => player_count
    }
  
  end

  def average_cost_of_player

   new_string = "$" + (total_value / player_count).to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse 
   new_string
  end

  def players_by_last_name
    roster.map do |player|
      # require 'pry'; binding.pry
      player.last_name
    end.sort.join(", ") 

  end
end   

