require 'watir-webdriver'
require 'syntax'

Before do
   @browser = Watir::Browser.new :firefox
   #@browser = Watir::Browser.new :chrome
end

After do |scenario|
  if scenario.failed?
    embed_screenshot
  end
  @browser.cookies.clear
  @browser.close
end

private

def embed_screenshot
  encoded_img = @browser.driver.screenshot_as(:base64)
  embed("data:image/png;base64,#{encoded_img}", 'image/png')
end