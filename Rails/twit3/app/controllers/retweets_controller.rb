class RetweetsController < ApplicationController
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
    redirect_to retweet_path(@retweet)
  end

  def destroy
  end

  private
  def retweet_params
    params.require(:post).permit(:retweet_id, :content).merge(user_id: current_user.id)
  end
end
