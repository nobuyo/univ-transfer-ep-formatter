class CreateUnivs < ActiveRecord::Migration[5.1]
  def change
    create_table :univs do |t|
      t.string :name
      t.string :dept
      t.string :admission_method
      t.string :result
      t.text :exam_info
      t.text :interview_info

      t.timestamps
    end
  end
end
