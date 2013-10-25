class AddStudyCodeToStudy < ActiveRecord::Migration
  def change
    add_column :studies, :study_code, :string
  end
end
