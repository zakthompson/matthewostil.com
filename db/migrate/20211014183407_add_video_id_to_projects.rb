class AddVideoIdToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :video_id, :string
  end
end
