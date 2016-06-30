require('rspec')
require('make_change')

describe('String#make_change') do
  it('returns 2 quarters if user enters 50 cents') do
    expect("50".make_change()).to(eq({"quarters" => 2, "dimes" => 0, "nickels" => 0, "pennies" => 0}))
  end

  it('returns 2 dimes if user enters 20 cents') do
    expect("20".make_change()).to(eq({"quarters"=>0, "dimes"=>2, "nickels"=>0, "pennies"=>0}))
  end

  it('returns 1 nickel if user enters 5 cents') do
    expect("5".make_change()).to(eq({"quarters"=>0, "dimes"=>0, "nickels"=>1, "pennies"=>0}))
  end

  it('returns 4 pennies if user enters 4 cents') do
    expect("4".make_change()).to(eq({"quarters"=>0, "dimes"=>0, "nickels"=>0, "pennies"=>4}))
  end

  it('returns 2 quarters and 1 dime if user enters 60 cents') do
    expect("60".make_change()).to(eq({"quarters"=>2, "dimes"=>1, "nickels"=>0, "pennies"=>0}))
  end

  it('returns 2 quarters, 1 dime, and 1 nickel if user enters 65 cents') do
    expect("65".make_change()).to(eq({"quarters"=>2, "dimes"=>1, "nickels"=>1, "pennies"=>0}))
  end

  it('returns 2 quarters, 1 dime, 1 nickel and 1 penny if user enters 66 cents') do
    expect("66".make_change()).to(eq({"quarters"=>2, "dimes"=>1, "nickels"=>1, "pennies"=>1}))
  end
end
