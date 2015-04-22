require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble score path', {:type => :feature}) do
  it('takes the entry and returns a score') do
    visit('/')
    fill_in('word', :with => 'ab')
    click_button('Send')
    expect(page).to have_content(4)
  end
end
