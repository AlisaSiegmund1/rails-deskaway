class Workspace < ApplicationRecord
  belong_to :user
  has_many :booking
end
