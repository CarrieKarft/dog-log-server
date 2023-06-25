class CreateWalks < ActiveRecord::Migration[6.1]
  def change
    create_table :walks do |t|
      t.string :location
      t.boolean :used_bathroom
      t.integer :duration_in_minutes
      t.float :distance_in_miles
      t.boolean :medication_given
      t.string :notes
    end
  end
end
