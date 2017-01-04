class RetweetsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def show
    @retweet = Post.find(params[:id])
    @post = Post.find(@retweet.retweet_id)
  end

  def new
    @post = Post.find(params[:retweet_id])
    @retweet = @post.retweets.build
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @post = Post.find(params[:retweet_id])
    @retweet = @post.retweets.create(retweet_params)
    @retweet.save
    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
  end

  private
  def retweet_params
    params.require(:post).permit(:retweet_id, :content, :avatar).merge(user_id: current_user.id)
  end
end
