class Team 
  attr_reader :team_name, :city, :roster, :long_term_players
  def initialize(team_name, city)
    @team_name = team_name
    @city = city 
    @roster = []
    
  end

  def player_count
    @roster.length 
  end

  def add_player(new_guy)
    @roster << new_guy
  end

  def long_term_players  
   roster.select do |player|
    
     player.contract_length > 24 
    end 
  end

  def short_term_players
    roster.select do |player|
      player.contract_length <= 24 
    end
  end

  def total_value 
    total_value = roster.each do |player|
      
      player.total_cost 
    total_value 
    end
    
  end
end