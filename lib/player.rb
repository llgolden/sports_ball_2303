class Player
  attr_reader :name
                :monthly_cost
                :contract_length

  def initialize (name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
  end #def initialize

  def first_name
    full_name = @name.partition(" ")
    full_name[0]
  end

  def last_name
    full_name = @name.partition(" ")
    full_name[2]
  end

  def monthly_cost
    @monthly_cost
  end

  def contract_length
    @contract_length
  end

  def total_cost
    @monthly_cost * @contract_length
  end

end #final