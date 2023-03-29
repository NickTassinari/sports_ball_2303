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

end