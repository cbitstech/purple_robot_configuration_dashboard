class Removestudycodefromstudies < ActiveRecord::Migration
  def change
      remove_column :studies, :study_code
  end
end
