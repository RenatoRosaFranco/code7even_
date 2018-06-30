module Dashboard
	class UsersController < HomeController
		before_action :set_user, only: [:show, :edit, :update, :destroy]
		respond_to :html, :json, :js

		def index
			@user = Users.all 
		end

		def new
			@user = User.new
		end

		def show
		end

		def create
			@user = User.create(user_params)
			respond_with(:dashboard, @user)
		end

		def edit
		end

		def update
			@user.update(user_params)
			respond_with(:dashboard, @user)
		end

		def destroy
			@user.destroy
			respond_with(:dashboard, @user)
		end

		private
			def set_user
				@user = User.find(params[:id])
			end

			def user_params
				params.require(:user).permit(:email, :password, :password_confirmation)
			end	
	end
end
