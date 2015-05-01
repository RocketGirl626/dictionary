require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dictionary path', {:type => :feature}) do
  it('displays the current words in the dictionary') do
    visit('/')
    expect page to have_content('Dictionary')
  end
end
