require 'rspec'
require './lib/player_dani'
require './lib/team_dani'

RSpec.describe Team do
  describe "Iteration 2" do
    it "exists and has attributes" do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team).to be_a(Team)
      expect(team.name).to eq("Dodgers")
      expect(team.location).to eq("Los Angeles")
    end

    it "starts with no roster" do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.roster).to eq([])
    end

    it "starts with a zero player count" do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.player_count).to eq(0)
    end

    it "can add players to the roster" do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      team.add_player(player_1)
      team.add_player(player_2)
      team.roster
      expect(team.roster).to eq([player_1, player_2])
    end

    it "can get player count" do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      team.add_player(player_1)
      team.add_player(player_2)
      team.roster
      expect(team.player_count).to eq(2)
    end
  end

  describe "Iteration 3" do
    it "can list long term players" do
      team = Team.new("Dodgers", "Los Angeles")
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      expect(team.long_term_players).to eq([player_1, player_3])
    end

    it "can list short term players" do
      team = Team.new("Dodgers", "Los Angeles")
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      expect(team.short_term_players).to eq([player_4, player_2])
    end

    it "can get a team's total value" do
      team = Team.new("Dodgers", "Los Angeles")
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.total_value).to eq(85200000)
    end

    it "can ge" do
      team = Team.new("Dodgers", "Los Angeles")
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expected = {
        "total_value" => 85200000,
        "player_count" => 4
      }

      expect(team.details).to eq(expected)    
    end
  end

  describe "Iteration 3" do
    it "can get average cost of player" do
      team = Team.new("Dodgers", "Los Angeles")
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.average_cost_of_player).to eq ("$21,300,000")
    end

    it "list players alphabetically" do
      team = Team.new("Dodgers", "Los Angeles")
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.players_by_last_name).to eq ("DeNunez, McClennan, Palledorous, Porter")
    end



  end
end