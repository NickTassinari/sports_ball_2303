require './lib/player'
require './lib/team'

RSpec.describe Team do

  it 'has Team class' do 
    team = Team.new("Dodgers", "Los Angeles")
    
    expect(team).to be_a(Team)
  end

  it 'has empty roster' do 
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.roster).to eq([])
  end

  it 'has player_count' do 
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.player_count).to eq(0)
  end

  it 'can add player to team' do 
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team.add_player(player_1)
    team.add_player(player_2)
    new_roster = team.roster 
    expect(team.roster).to eq(new_roster)
    expect(team.player_count).to eq(2)
  end

end