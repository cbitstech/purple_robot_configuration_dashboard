class RoboUser < ActiveRecord::Base
    belongs_to :study
    belongs_to :phone_configuration

    validates :username, presence: true
end
