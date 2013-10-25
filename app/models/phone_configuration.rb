class PhoneConfiguration < ActiveRecord::Base
    has_many :studies
    has_many :robo_users

    validates :json, :config_name, presence: true
end
