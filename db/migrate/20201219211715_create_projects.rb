class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :estimate_number
      t.string :project_title
      t.string :address
      t.string :city
      t.string :state_abbrv
      t.string :zip
      t.string :no_site
    end
  end
end
