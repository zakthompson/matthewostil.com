class Project < ApplicationRecord
  has_many :images, inverse_of: :project, dependent: :destroy

  accepts_nested_attributes_for :images, allow_destroy: true
end
