class Cat < ApplicationRecord
  has_many :user, dependent: :destroy
  mount_uploader :image, ImageUploader
end
