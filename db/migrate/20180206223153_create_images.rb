class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :project_id
      t.boolean :feature
      t.string :file

      t.timestamps
    end
  end
end
