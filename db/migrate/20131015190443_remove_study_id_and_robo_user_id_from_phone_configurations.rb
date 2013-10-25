class RemoveStudyIdAndRoboUserIdFromPhoneConfigurations < ActiveRecord::Migration
  def change
      remove_column :phone_configurations, :robo_user_id
      remove_column :phone_configurations, :study_id
  end
end
