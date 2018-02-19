class Setting < ApplicationRecord
  mount_uploader :resume, ResumeUploader
  mount_uploader :headshot, ImageUploader
  mount_uploader :about_image, ImageUploader
end
