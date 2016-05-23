class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :name

      t.belongs_to :role, index: true

      t.timestamps
    end
  end
end
