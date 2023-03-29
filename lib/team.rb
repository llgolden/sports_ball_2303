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
    @roster.find_all do |player|
      player.total_cost

    # iterate over the roster and pull each indivdulal player's total cost
    # get the sum of the new array 
  end



end #final