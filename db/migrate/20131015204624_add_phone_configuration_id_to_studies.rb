class AddPhoneConfigurationIdToStudies < ActiveRecord::Migration
  def change
    add_column :studies, :phone_configuration_id, :integer
  end
end
