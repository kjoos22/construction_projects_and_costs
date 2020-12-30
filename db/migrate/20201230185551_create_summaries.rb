class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.integer :estimate_id
      t.integer :demolition
      t.integer :abatement
      t.integer :fencing
      t.integer :sitework
      t.integer :waterfront_access_and_bulkhead
      t.integer :site_concrete
      t.integer :asphalt_paving_and_striping
      t.integer :landscaping
      t.integer :piles
      t.integer :ground_improvements
      t.integer :concrete
      t.integer :precast_concrete_panels
      t.integer :masonry
      t.integer :structural_steel
      t.integer :miscellaneous_metals
      t.integer :millwork
      t.integer :eifs
      t.integer :roofing
      t.integer :thermal_and_moisture_protection
      t.integer :metal_panels
      t.integer :prefab_facade_mega_panels
      t.integer :applied_fireproofing
      t.integer :doors_frames_and_hardware
      t.integer :overhead_doors
      t.integer :glass_and_glazing
      t.integer :carpentry_and_drywall
      t.integer :tile
      t.integer :flooring
      t.integer :paint_and_wallcovering
      t.integer :signage
      t.integer :division_10_specialties
      t.integer :loading_dock_equipment
      t.integer :kitchen_equipment
      t.integer :operable_partitions
      t.integer :vertical_transportation
      t.integer :fire_supression
      t.integer :plumbing
      t.integer :hvac
      t.integer :electric
      t.integer :final_cleaning
      t.integer :general_requirements
      t.integer :site_safety
      t.integer :site_security
      t.string :contingency_pct
      t.string :sdi_pct
      t.string :general_conditions_pct
      t.string :fee_pct
      t.string :insurance_pct
    end
  end
end
