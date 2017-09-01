require 'watir'
require_relative 'bbc_site'

	World(BbcSite)

	driver = Watir::Browser.new :chrome

	Before do 
		@driver = driver
		
	end