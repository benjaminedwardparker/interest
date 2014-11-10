class Pin < ActiveRecord::Base
  belongs_to :user
  validates :url, :photo, :notes, presence: true
  mount_uploader :photo, PhotoUploader
end
