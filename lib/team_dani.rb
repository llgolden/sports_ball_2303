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

    # def average_cost_of_player
    #   "$#{total_value / player_count}".insert(-4, ',').insert(-8, ',')
    # end 
    # potential issue if the cost was in the billions

    # def average_cost_of_player
    #   return_value = total_value / player_count
    #   return_value.to_s.insert(1,",")
    #   comma = return_value.to_s.insert(2,",")
    #   comma.insert(6,",")
    #   dollars = comma.insert(0,"$")
    # end

    # def average_cost_of_player
    #   (total_value / player_count).to_s.insert(-4, “,”).insert(-8, “,”).insert(0, “$”)
    # end
    
  # def average_cost_of_player
  #   new_string = "$" + (total_value / player_count).to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  #  new_string
  # end

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