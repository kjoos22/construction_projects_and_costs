class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.string :estimate_number
      t.string :submission_title
      t.integer :revision
      t.string :scheme
      t.string :sector
      t.string :industry
      t.string :labor_status
      t.string :tax_status
      t.string :icap
      t.string :site_acerage
      t.integer :gsf
      t.string :estimate_type
      t.string :design_phase
      t.string :result
    end
  end
end
