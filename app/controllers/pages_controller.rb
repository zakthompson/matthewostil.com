class PagesController < ApplicationController
  before_action :set_setting

  def home
    @projects = Project.all.order(:order)
  end

  def about
  end

  def resume
  end

  private

    def set_setting
      @setting = Setting.first
    end
end
