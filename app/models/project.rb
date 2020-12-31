class Project < ActiveRecord::Base
    has_many :estimates
    validates :estimating_number, presence: :true
    validates :estimating_number, uniqueness: :true
    validates :project_title, presence: :true
    validates :address, presence: :true
    validates :city, presence: :true
    validates :state_abbrv, presence: :true
    validates :state_abbrv, length: {is: 2}
    validates :zip, length: {is: 5}

end