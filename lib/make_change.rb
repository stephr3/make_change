class String
  define_method(:make_change) do
    user_input = self.to_i()
    if user_input >= 25
      number_of_quarters = user_input./(25)
      number_of_quarters
    elsif user_input >= 10
      number_of_dimes = user_input./(10)
      number_of_dimes
    end
  end
end
