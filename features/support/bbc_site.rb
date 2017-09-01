require_relative 'pages/HomePage'
require_relative 'pages/RegisterPage'
require_relative 'pages/UserPage'

module BbcSite
	#modules and classes namespaces
	#Class is a blueprint
	#Classes are things
	#Modules allow you to do thins
	#defs in modules need to have self.

	def home_page
		HomePage.new(@driver)
	end

	def user_page
		UserPage.new(@driver)
	end

	def register_page
		RegisterPage.new(@driver)
	end

end