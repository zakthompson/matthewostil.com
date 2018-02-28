class AddAvailableToSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :available, :boolean
  end
end
