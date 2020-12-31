class User <ActiveRecord::Base
    has_many :projects
    has_many :estimates
    has_many :summaries
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: :true
end