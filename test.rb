#! /usr/bin/ruby
require "selenium-webdriver"

## DOC:
# https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings
#

SERVER = "https://google.com"
browser = Selenium::WebDriver.for :chrome
browser.get SERVER
p browser.current_url
p browser.title
browser.find_element(name: "q").send_keys "aaaaaaa"
browser.find_element(name: "q").clear
p browser.find_element(name: "q").attribute(:name)
p browser.find_element(name: "q").attribute(:class)
p browser.find_element(name: "q").attribute(:type)
p browser.find_element(name: "q").
	  attribute(:autocomplete)
browser.save_screenshot "phantomjs.png"
#p browser.page_source
p browser.find_element(name: "q").
	  attribute(:outerHTML)
browser.quit
