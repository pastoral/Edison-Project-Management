class CreateSwVersions < ActiveRecord::Migration
  def change
    create_table :sw_versions do |t|
      t.string :swversion
      t.text :description

      t.timestamps null: false
    end
  end
end
