class TweetsController < ApplicationController



  def index
    @tweets = Tweet.all
    @users = User.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to controller: :tweets, action: :index
  end

  def show
    @user = User.all
  end

  private
  def tweet_params
    params.require(:tweet).permit(:image, :text)
  end

end
