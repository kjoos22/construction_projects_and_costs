class UpdateProjects < ActiveRecord::Migration
  def change
    
      rename_column :projects, :estimate_number, :estimating_number
    
  end
end
