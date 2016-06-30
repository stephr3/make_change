require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the make_change path', {:type => :feature}) do
  it('takes input from the user and returns the smallest amount of coins for change') do
    visit('/')
    fill_in('user_input', :with => '66')
    click_button('calculate')
    expect(page).to have_content('Quarters: 2')
  end
end
