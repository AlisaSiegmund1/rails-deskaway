class Workspace < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :utilities, through: :workspace_details
  mount_uploader :photo, PhotoUploader
end
