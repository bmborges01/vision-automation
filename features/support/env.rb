require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/poltergeist'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.javascript_driver = :selenium
  config.default_selector = :css
  config.default_max_wait_time = 5
  config.app_host = 'http://vision.test.decisiv.net'
  config.run_server = false
  config.match = :prefer_exact
  config.ignore_hidden_elements = false
end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app,
    :phantomjs_options => ['--debug=no', '--load-images=no', '--ignore-ssl-errors=yes', '--ssl-protocol=TLSv1'], :debug => false)
  end


Capybara.register_driver :selenium do |app|
  profile = Selenium::WebDriver::Chrome::Profile.new
  Capybara::Selenium::Driver.new(app, browser: :chrome, profile: profile)
end

SitePrism.configure do |config|
  config.use_implicit_waits = false
end
