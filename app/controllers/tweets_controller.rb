class TweetsController < ApplicationController

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    if @tweet.save
      flash[:notice] = "Shared with successfully."
      redirect_to profiles_me_path
    else
      flash[:alert] = "Something went wrong."
      redirect_to profiles_me_path
    end
  end

  private
    def tweet_params
      params.require(:tweet).permit(:content, {:images => []})
    end
end