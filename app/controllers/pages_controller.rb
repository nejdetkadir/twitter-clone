class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:feed]
  def home
  end

  def feed
  end
end
