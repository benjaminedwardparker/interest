class Pin < ActiveRecord::Base
  belongs_to :user
  validates :url, :photo, :blurb, presence: true
  mount_uploader :photo, PhotoUploader
end
