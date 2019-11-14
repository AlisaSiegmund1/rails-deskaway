class Workspace < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :utilities, through: :workspace_details
  mount_uploader :photo, PhotoUploader


  include PgSearch::Model
  pg_search_scope :search_workspaces,
    against: [:address],
    using: {
      tsearch: { prefix: true }
    }
end
