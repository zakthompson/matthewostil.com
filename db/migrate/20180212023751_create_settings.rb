class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.string :headshot
      t.string :resume
      t.string :youtube
      t.string :linkedin
      t.string :email
      t.string :twitter
      t.text :about
      t.string :about_image

      t.timestamps
    end
  end
end
