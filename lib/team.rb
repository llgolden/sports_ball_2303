class Team
  attr_reader :mascot, :city, :roster

  def initialize (mascot, city)
    @mascot = mascot
    @city = city
    @roster = []
  end #def initialize

  def player_count
    roster.length
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    @roster.find_all do |player|
      player.contract_length > 24
    end
  end

  def short_term_players
    @roster.find_all do |player|
      player.contract_length <= 24
    end
  end

  def total_value
    roster_costs = []
    @roster.each do |player|
      roster_costs << player.total_cost
    end
    roster_costs.sum
  end



end #final