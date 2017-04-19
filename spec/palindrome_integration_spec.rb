require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_execptions, false)

describe('palindrome path', {:type => :feature}) do
  it ('will decide if a word/words are palindomes') do
  visit('/')
  fill_in('words', :with => 'racecar')
  click_button('submit')
  expect(page).to have_content("That's a palindrome")
  end
end
