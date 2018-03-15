class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :country
      t.string :province_region
      t.string :municipality_location
      t.string :community_name
      t.string :community_status

      t.timestamps
    end
  end
end
