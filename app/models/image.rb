class Image < ApplicationRecord
  mount_uploader :file, ImageUploader

  belongs_to :project, inverse_of: :images
end
