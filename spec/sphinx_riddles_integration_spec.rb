require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the sphinx riddle answer processor', {:type => :feature}) do
  # it('takes the riddle answer and let\'s the user know if it\'s correct') do
  #   visit('/')
  #   fill_in('riddle1', :with => 'a man')
  #   fill_in('riddle2', :with => 'orange')
  #   fill_in('riddle3', :with => 'Traffic light')
  #   fill_in('riddle4', :with => 'River')
  #   fill_in('riddle5', :with => 'Sponge')
  #   click_button('Check your answer')
  #   expect(page).to have_content('successfully')
  # end
end
