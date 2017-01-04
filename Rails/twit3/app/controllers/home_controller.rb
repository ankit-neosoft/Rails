class HomeController < ApplicationController
  def index
    @posts = Post.all
  	@post = Post.new
    @posts = Post.paginate(:page => params[:page], :per_page => 10)
  end
end
