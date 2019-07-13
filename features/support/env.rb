require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'rspec'
require 'selenium-webdriver'
$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../../lib/test_site")
require 'test_site'


# Capybara configuration

Capybara.configure do |config|
  config.default_driver = :selenium
  config.javascript_driver = :selenium
  config.default_selector = :css
  config.default_max_wait_time = 30
  config.match = :prefer_exact
  config.app_host = "https://www.paypal.com/"
end



#Setup Default driver as chrome
Capybara.default_driver = :chrome

#Chrome capabilites
caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => ["--testff-type"]})

#Register Capybara driver
Capybara.register_driver "chrome".to_sym do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome
  Capybara::Selenium::Driver.new(app,
                                 :browser=>"chrome".to_sym,
                                 #:url=>'http://10.0.0.136:4444/wd/hub',
                                 :desired_capabilities=>caps
  )
end

$Browser = TestSite.new