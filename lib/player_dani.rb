class Player
  attr_reader :name,
              :first_name,
              :last_name,
              :monthly_cost,
              :contract_length,
              :nickname

  def initialize(name, monthly_cost, contract_length)
    @name = name
    @first_name = name.split.first
    @last_name = name.split.last
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nil 
  end

  def total_cost
    @monthly_cost * @contract_length
  end

  def set_nickname!(given_name)
    @nickname = given_name
  end
end