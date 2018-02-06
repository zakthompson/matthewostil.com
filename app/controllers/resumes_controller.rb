class ResumesController < ApplicationController
  before_action :set_resume, only: [:update]
  def edit
    if Resume.any?
      @resume = Resume.first
    else
      @resume = Resume.new
    end
  end

  def create
    @resume = Resume.new(resume_params)

    respond_to do |format|
      if @resume.save
        flash[:notice] = 'Resume was successfully updated.'
        format.html { redirect_to action: :edit }
      else
        format.html { render :edit }
      end
    end
  end

  def update
    respond_to do |format|
      if @resume.update(resume_params)
        flash[:notice] = 'Resume was successfully updated.'
        format.html { redirect_to action: :edit }
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_resume
    @resume = Resume.find(params[:id])
  end

  def resume_params
    params.require(:resume).permit(:file)
  end
end
