class AddTotalvotesToCandidates < ActiveRecord::Migration[7.0]
  def change
    add_column :candidates, :totalvotes, :float, :default => 0.0
  end
end
