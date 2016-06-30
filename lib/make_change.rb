class String
  define_method(:make_change) do
    user_input = self.to_i()
    number_of_quarters = user_input./(25)
    number_of_quarters
  end
end
