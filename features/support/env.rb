require 'rspec-expectations'
require 'page-object'
require 'data_magic'
require 'fig_newton'
require 'require_all'
require 'faker'

if ENV['HEADLESS']
  require 'headless'
  headless = Headless.new
  headless.start
  at_exit do
    headless.destroy
  end
end

World(PageObject::PageFactory)

require_all File.dirname(__FILE__) + '/pages'

PageObject::PageFactory.routes = {
    :default => [[HomePage]]
}