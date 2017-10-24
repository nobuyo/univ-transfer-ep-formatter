class CreateTimelineitems < ActiveRecord::Migration[5.1]
  def change
    create_table :timelineitems do |t|
      t.integer :episode_id
      t.string :grade
      t.string :period
      t.text :content
      t.string :studying_time

      t.timestamps
    end
  end
end
