class Summary < ActiveRecord::Base
    belongs_to :estimate
    belongs_to :user

end