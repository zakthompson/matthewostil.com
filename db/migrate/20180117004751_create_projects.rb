class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :company
      t.text :summary
      t.text :role
      t.text :media

      t.timestamps
    end
  end
end
