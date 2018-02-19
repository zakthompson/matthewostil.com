class AdminController < ApplicationController
  before_action :authenticate

  def index
    @setting = Setting.first
  end

  private

  def authenticate
    if !logged_in?
      redirect_to '/login'
    end
  end
end
