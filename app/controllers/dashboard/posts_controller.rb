# frozen_string_literal: true
module Dashboard
	class PostsController < HomeController
		before_action :set_post, only: [:show, :edit, :update, :destroy]
		respond_to :html, :json, :js

		def index
			@posts = Post.all
		end

		def new
			@post = Post.new
		end

		def edit
		end

		def show
		end

		def create
			@post = Post.create(post_params)
			respond_with(:dashboard, @post)
		end

		def edit
		end

		def update
			@post.update(post_params)
			respond_with(:dashboard, @post)
		end

		def destroy
			@post.destroy
			respond_with(:dashboard, @post)
		end

		private
			def set_post
				@post = Post.find(params[:id])
			end

			def post_params
				params.require(:post)
					.permit(:title, :description, :content, :status, :tags)
			end	
	end
end
