class CreateTimelineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :timeline_items do |t|
      t.string :grade
      t.string :period
      t.text :content

      t.timestamps
    end
  end
end
