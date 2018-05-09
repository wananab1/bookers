class PostsController < ApplicationController

	def top
	end

	def index
		@post = Post.new
	end

	def create
		post = Post.new(post_params)
		post.save
		redirect_to posts_path
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def post_params
		params.require(:post).permit(:title, :body)
	end

end
