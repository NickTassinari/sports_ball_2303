class Team 
  attr_reader :team_name, :city, :roster, :long_term_players
  def initialize(team_name, city)
    @team_name = team_name
    @city = city 
    @roster = []
    # @long_term_players = []
  end

  def player_count
    @roster.length 
  end

  def add_player(new_guy)
    @roster << new_guy
  end

  def long_term_players  
   @long_term_players = @roster.map do |player|
    
     if player.contract_length > 24 
        player
     end 
    
    end 
    
  end


  def total_value 

    @team.player.total_cost * @team.player_count 
  end
end