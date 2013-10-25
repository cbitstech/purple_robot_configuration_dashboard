class PhoneConfiguration < ActiveRecord::Migration
  def change
    create_table :phone_configurations do |t|
      t.string :config_name
      t.integer :robo_user_id
      t.integer :study_id
      t.text :json

      t.timestamps
    end
  end
end
