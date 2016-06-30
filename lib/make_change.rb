class String
  define_method(:make_change) do
    user_input = self.to_i()
    change_hash = {"quarters" => 0, "dimes" => 0, "nickels" => 0, "pennies" => 0}
    temp_hash = Hash.new
    if user_input >= 25
      number_of_quarters = user_input./(25).floor()
      temp_hash.store("quarters", number_of_quarters)
      user_input = user_input.%(25)
    end
    if user_input >= 10
      number_of_dimes = user_input./(10).floor()
      temp_hash.store("dimes", number_of_dimes)
      user_input = user_input.%(10)
    end
    if user_input >= 5
      number_of_nickels = user_input./(5).floor()
      temp_hash.store("nickels", number_of_nickels)
      user_input = user_input.%(5)
    end
    if user_input < 5
      number_of_pennies = user_input
      temp_hash.store("pennies", number_of_pennies)
    end
    change_hash.merge(temp_hash)
  end
end
