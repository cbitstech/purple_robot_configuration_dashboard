class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :template_version
      t.string :json

      t.timestamps
    end
  end
end
