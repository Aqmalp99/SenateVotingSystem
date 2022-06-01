class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :surname
      t.string :party
      t.boolean :excluded, :default => false
      t.integer :order

      t.timestamps
    end
  end
end
