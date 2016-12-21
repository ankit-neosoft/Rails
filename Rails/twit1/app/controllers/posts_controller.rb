class PostsController < ApplicationController
	def index
		@posts = Post.all
		@post = Post.new
	end

	def show
		@user = User.find(params[:id])
		@post = Post.new
	end

	def create
		@user = User.find(current_user.id)
		@post = @user.posts.new(post_params)
		if @post.save
			redirect_to post_path(current_user)
		else
			flash[:error] = "Problem!"
			redirect_to post_path(current_user)
		end
	end

private
	def post_params
		params.require(:post).permit(:content, :user_id)
	end
end
