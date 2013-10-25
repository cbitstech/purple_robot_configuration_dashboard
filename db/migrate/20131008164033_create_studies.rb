class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :study_name

      t.timestamps
    end
  end
end
