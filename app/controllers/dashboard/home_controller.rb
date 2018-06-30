module Dashboard
	class HomeController < ApplicationController
	  
	  layout 'dashboard'
	  before_action :athenticate_user!

	  def index	
	  	# some code here
	  end
	end
end
