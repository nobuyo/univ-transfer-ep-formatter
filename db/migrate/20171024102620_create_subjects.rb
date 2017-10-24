class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.integer :univ_id
      t.string :title
      t.text :study_method

      t.timestamps
    end
  end
end
