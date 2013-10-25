class CreateRoboUsers < ActiveRecord::Migration
  def change
    create_table :robo_users do |t|
      t.integer :study_id
      t.string :username

      t.timestamps
    end
  end
end
