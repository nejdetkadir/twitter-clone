class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:feed]
  before_action :check_signed_in, only: [:home]

  def home
  end

  def feed
  end
end
