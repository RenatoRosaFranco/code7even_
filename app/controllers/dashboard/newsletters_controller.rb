# frozen_string_literal: true
module Dashboard
	class NewslettersController < HomeController
		before_action :set_newsletter, only: [:show, :edit, :update, :destroy]
		respond_to :html, :json, :js

		def index
			@newsletters = Newsletter.all 
		end

		def new
			@newsletter = Newsletter.new
		end

		def show
		end

		def edit
		end

		def create
			@newsletter = Newsletter.create(newsletter_params)
			respond_with(:dashboard, @newsletter)
		end

		def update
			@newsletter.update(newsletter_params)
			respond_with(:dashboard, @newsletter)
		end

		def destroy
			@newsletter.destroy
			respond_with(:dashboard, @newsletter)
		end

		private
			def set_newsletter
				@newsletter = Newsletter.find(params[:id])
			end	

			def newsletter_params
				params.require(:newsletter).permit(:name, :email)
			end
	end
end