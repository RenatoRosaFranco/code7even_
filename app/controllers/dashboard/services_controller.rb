module Dashboard
	class ServicesController < HomeController
		before_action :set_service, only: [:show, :edit, :update, :destroy]
		respond_to :html, :json, :js

		def index
			@services = Service.all
		end

		def new
			@service = Service.new
		end	

		def show
		end

		def edit
		end

		def create
			@service = Service.create(service_params)
			respond_with(:dashboard, @service)
		end

		def update
			@service.update(service_params)
			respond_with(:dashboard, @service)
		end

		def destroy
			@service.destroy
			respond_with(:dashboard,@service)
		end	

		private
			def set_service
				@service = Service.all
			end

			def service_params
				params.require(:service).permit(:name, :description, :tags)
			end
	end
end
