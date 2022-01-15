class CreateMediaFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :media_files do |t|
      t.string :title
      t.text :description
      t.references :user
      t.timestamps
    end
  end
end
