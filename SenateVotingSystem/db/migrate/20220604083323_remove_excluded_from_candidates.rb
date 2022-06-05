class RemoveExcludedFromCandidates < ActiveRecord::Migration[7.0]
  def change
    remove_column :candidates, :excluded, :boolean
  end
end
