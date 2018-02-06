class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def about
  end

  def resume
    @resume = Resume.first
  end
end
