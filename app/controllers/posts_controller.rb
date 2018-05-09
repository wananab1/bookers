class PostsController < ApplicationController

	def top
	end

	def index
		@posts = Post.all
		@post = Post.new
	end

	def create
		post = Post.new(post_params)

		if post.save
			redirect_to posts_path
			flash[:notice] = "投稿を作成しました"
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		post = Post.find(params[:id])

		if post.update(post_params)
			flash[:notice] = "投稿を編集しました"
			redirect_to post_path(post.id)
		end
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		flash[:notice] = "投稿を削除しました"
		redirect_to posts_path
	end

	private
	def post_params
		params.require(:post).permit(:title, :body)
	end

end
