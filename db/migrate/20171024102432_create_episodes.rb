class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :name
      t.string :dept
      t.string :activities
      t.string :destination
      t.string :record_1st
      t.string :record_2nd
      t.string :record_3rd
      t.string :record_4th
      t.text :advise
      t.text :comment
      t.text :motivation

      t.timestamps
    end
  end
end
