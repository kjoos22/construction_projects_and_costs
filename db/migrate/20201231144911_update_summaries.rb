class UpdateSummaries < ActiveRecord::Migration
  def change
    add_column :summaries, :subtotal_hardcost, :integer
    add_column :summaries, :contingency, :integer
    add_column :summaries, :sdi, :integer
    add_column :summaries, :general_conditions, :integer
    add_column :summaries, :subtotal, :integer
    add_column :summaries, :fee, :integer
    add_column :summaries, :insurance, :integer
    add_column :summaries, :total_estimate, :integer
  end
end
