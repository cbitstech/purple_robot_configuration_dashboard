class AddPhoneConfigurationIdToRoboUser < ActiveRecord::Migration
  def change
      add_column :robo_users, :phone_configuration_id, :integer
  end
end
