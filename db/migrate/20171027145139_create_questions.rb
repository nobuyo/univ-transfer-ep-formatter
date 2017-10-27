class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer "episode_id"
      t.string :teacher
      t.string :qstn
      t.text :answer

      t.timestamps
    end
  end
end
