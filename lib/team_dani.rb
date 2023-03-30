class Team
  attr_reader :name,
              :location,
              :roster

  def initialize(name, location)
    @name = name
    @location = location
    @roster = []
  end

  def player_count
    @roster.length
  end

  def add_player(player)
    # @roster << player
    @roster.push(player)
  end

  def long_term_players
    @roster.find_all do |player|
      player.contract_length > 24
    end
  end

  def short_term_players
    not_sorted = @roster.find_all do |player|
      player.contract_length <= 24
    end
    not_sorted.sort_by do |player|
      player.contract_length
    end
  end

  def total_value
    # wip = @roster.map do |player|
    #   player.total_cost
    # end.sum

    # OR

    player_values = @roster.map do |player|
      player.total_cost
    end
    player_values.sum

    # OR

    # @roster.sum do |player|
    #   player.total_cost
    # end

    # OR

    # player_values = []
    # @roster.each do |player|
    #   player_values << player.total_cost
    # end
    # player_values.sum
    end

    def details
      {
        "total_value" => total_value,
        "player_count" => player_count
      }
    end

    def average_cost_of_player
      raw_num = (total_value / player_count).to_s
      reversed_array = raw_num.reverse.split("").each_slice(3).to_a
      formatted = reversed_array.map do |num|
        num.reverse.join("")
      end
      formatted.reverse.join(",").insert(0, "$")
      #could use prepend instead of insert; uses the (position, thing_to_be_inserted) format
    end

    def players_by_last_name
      @roster.map do |player|
        player.last_name 
      end.sort.join(", ")
    end

    def players_by_last_name
      by_last_name = @roster.map do |player|
        player.last_name
      end
      by_last_name.sort.join(", ")
    end
  
end