class AddTendencyToUniv < ActiveRecord::Migration[5.1]
  def change
    add_column :univs, :tendency, :text
  end
end
