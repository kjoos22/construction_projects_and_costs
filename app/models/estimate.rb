class Estimate < ActiveRecord::Base
    belongs_to :project
    belongs_to :user
    has_one :summary
    validates :project_id, presence: :true
    validates :submission_title, presence: :true
    validates :revision, presence: :true
    validates :scheme, presence: :true
    validates :sector, presence: :true
    validates :industry, presence: :true
    validates :labor_status, presence: :true
    validates :tax_status, presence: :true
    validates :icap, presence: :true
    validates :site_acerage, presence: :true
    validates :gsf, presence: :true
    validates :estimate_type, presence: :true
    validates :design_phase, presence: :true
    validates :result, presence: :true
end