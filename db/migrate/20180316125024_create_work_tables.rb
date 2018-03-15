class CreateWorkTables < ActiveRecord::Migration[5.1]
  def change
    create_table :work_tables do |t|
      t.integer :community_id
      t.string :periodicity
      t.date :start_date
      t.date :end_date
      t.date :next_renovation_date
      t.string :status
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
