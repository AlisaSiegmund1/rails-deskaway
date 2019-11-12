class Workspace < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :utilities, through: :workspace_details
end
