class TweetsController < ApplicationController



  def index
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.permit(:nickname, :image, :text)
  end

end
