class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :project_type
      t.string :project_subtype
      t.string :financing
      t.string :project_situation
      t.date :project_start
      t.date :project_end

      t.timestamps
    end
  end
end
