class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :send_follow_request]

  def index
  end

  def show
    if current_user == @user
      redirect_to profiles_me_path
    end
  end

  def send_follow_request
    current_user.friend_request(@user)
    @user.accept_request(current_user)
    render :json => {status: true}
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
