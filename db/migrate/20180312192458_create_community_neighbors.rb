class CreateCommunityNeighbors < ActiveRecord::Migration[5.1]
  def change
    create_table :community_neighbors do |t|
      t.integer :community_id
      t.string :name
      t.string :surname
      t.string :phone
      t.string :mail
      t.string :status
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
