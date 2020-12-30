class Estimate < ActiveRecord::Base
    belongs_to :project
    has_one :summary

end