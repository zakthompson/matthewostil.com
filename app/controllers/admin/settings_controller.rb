class Admin::SettingsController < AdminController
  before_action :set_setting, only: [:update, :edit]

  def edit
  end

  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to edit_admin_setting_path(@setting), notice: 'Settings successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

    def set_setting
      @setting = Setting.first
    end

    def setting_params
      params.require(:setting).permit(:headshot, :resume, :youtube, :linkedin, :email, :twitter, :about, :about_image, :available)
    end
end
