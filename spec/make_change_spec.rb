require('rspec')
require('make_change')

describe('String#make_change') do
  it('returns 2 quarters if user enters 50 cents') do
    expect("50".make_change()).to(eq(2))
  end
end
