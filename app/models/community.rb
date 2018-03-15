class Community < ApplicationRecord
  has_many :community_neighbors, :community_coordinators
  has_one :work_table
end
