class ChangeJsonFromStringToText < ActiveRecord::Migration
  def change
      change_column :templates, :json, :text
  end
end
