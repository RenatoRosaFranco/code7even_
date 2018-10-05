# frozen_string_literal: true
class NewslettersController < ApplicationController

	def create
		newsletter  = Newsletter.new(newsletter_params)
		respond_to do |format|
			if newsletter.save

			else

			end
			format.js { render layout: false }
		end
	end

	private
		def newsletter_params
			params.require(:newsletter).permit(:name, :email)
		end
end