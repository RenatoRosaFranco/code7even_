module Dashboard
	class CategoriesController < HomeController
		before_action :set_category, only: [:show, :edit, :update, :destroy]
		respond_to :html, :json, :js

		def index
			@categories = Category.all 
		end

		def new
			@category = Category.new
		end

		def show
		end

		def create
			@category = Category.new(category_params)
			respond_with(:dashboard, @category)
		end

		def edit
		end

		def update
			@category.update(category_params)
			respond_with(:dashboard, @category)
		end
		
		def destroy
			@category.destroy
			respond_with(:dashboard, @category)
		end

		private
			def set_category
				@category = Category.find(params[:id])
			end

			def category_params
				params.require(:category)
					.permit(:name, :description, :tags, :category_id)
			end	
	end
end
