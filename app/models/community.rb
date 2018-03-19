class Community < ApplicationRecord
  has_many :community_neighbors
  has_many :community_coordinators
  has_one :work_table
end
