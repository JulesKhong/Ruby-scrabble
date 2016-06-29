require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the score path',{:type => :feature}) do
  it("takes the user input, and returns the Scrabble score") do
    visit('/')
    fill_in('word',:with => 'apple')
    click_button('Get your scrabble score here!')
    expect(page).to have_content(9)
  end
  it("returns the user to the index when they click on the try again button") do
    visit('/testscore')
    click_button('Try another word')
    expect(page).to have_content('Get your Scrabble score:')
  end
end
