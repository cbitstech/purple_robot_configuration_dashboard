class Study < ActiveRecord::Base
    has_many :robo_users
    belongs_to :phone_configuration

    validates :study_name, presence: true
end
