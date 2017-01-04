class UsersController < ApplicationController
  def index
		@users = User.all
		@posts = Post.all
		@post = Post.new
		@users = User.paginate(:page => params[:page], :per_page => 5)
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

	def destroy
		@post = Post.find(params[:id])		
		@post.destroy
		redirect_to user_path(current_user)
	end

	def picture
		@users = User.all
	end

	private
	def post_params
		params.require(:post).permit(:content, :user_id)
	end
end
