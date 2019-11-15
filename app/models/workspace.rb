class Workspace < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :workspace_details, dependent: :destroy
  has_many :utilities, through: :workspace_details
  validates :name, presence: true
  validates :general_description, presence: true
  validates :address, presence: true
  validates :capacity, presence: true
  validates :price_per_hour, presence: true
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_workspaces,
    against: [:address],
    using: {
      tsearch: { prefix: true }
    }
end
