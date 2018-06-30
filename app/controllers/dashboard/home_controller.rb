module Dashboard
	class HomeController < ApplicationController
	  
	  layout 'dashboard'
	  before_action :authenticate_user!

	  def index	
	  	# some code here
	  end
	end
end
