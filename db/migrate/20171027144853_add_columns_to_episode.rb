class AddColumnsToEpisode < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :how_to_choice, :text
    add_column :episodes, :how_to_clear_internal_test, :text
  end
end
