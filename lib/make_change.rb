class String
  define_method(:make_change) do
    user_input = self.to_i()
    if user_input >= 25
      number_of_quarters = user_input./(25)
      number_of_quarters
    elsif user_input >= 10
      number_of_dimes = user_input./(10)
      number_of_dimes
    elsif user_input >= 5
      number_of_nickels = user_input./(5)
      number_of_nickels
    else
      number_of_pennies = user_input
      number_of_pennies
    end
  end
end
