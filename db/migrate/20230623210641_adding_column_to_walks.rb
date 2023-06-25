class AddingColumnToWalks < ActiveRecord::Migration[6.1]
  def change
    add_column :walks, :dog_id, :integer
  end
end
