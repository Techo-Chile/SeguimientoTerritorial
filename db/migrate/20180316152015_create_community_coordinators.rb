class CreateCommunityCoordinators < ActiveRecord::Migration[5.1]
  def change
    create_table :community_coordinators do |t|
      t.integer :community_id
      t.string :name
      t.string :surname
      t.string :mail
      t.string :phone
      t.string :status
      t.date :start_date
      t.date :end_date
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
