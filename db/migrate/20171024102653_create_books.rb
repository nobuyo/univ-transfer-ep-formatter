class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.integer :subject_id
      t.string :title
      t.string :press
      t.string :comment

      t.timestamps
    end
  end
end
