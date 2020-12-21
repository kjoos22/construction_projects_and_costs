class UpdateEstimates < ActiveRecord::Migration
  def change
    rename_column :estimates, :estimate_number, :project_id
  end
end
