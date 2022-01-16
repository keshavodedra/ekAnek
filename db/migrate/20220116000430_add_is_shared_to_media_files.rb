class AddIsSharedToMediaFiles < ActiveRecord::Migration[6.1]
  def change
    add_column :media_files, :is_shared, :boolean, :default => false
  end
end
