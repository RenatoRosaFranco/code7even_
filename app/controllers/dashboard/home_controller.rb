# frozen_string_literal: true
module Dashboard
	class HomeController < ApplicationController
	  
	  layout 'dashboard'
	  before_action :authenticate_user!

	  def index	
	  	render 'index'
	  end
	end
end
