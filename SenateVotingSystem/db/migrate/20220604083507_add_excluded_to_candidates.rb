class AddExcludedToCandidates < ActiveRecord::Migration[7.0]
  def change
    add_column :candidates, :excluded, :boolean, :default => false
  end
end
