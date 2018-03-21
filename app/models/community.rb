class Community < ApplicationRecord
  has_many :community_neighbors , dependent: :destroy
  has_many :community_coordinators , dependent: :destroy
  has_one :work_table , dependent: :destroy
end
