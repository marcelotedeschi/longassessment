class CreatePermissionUsers < ActiveRecord::Migration
  def change
    create_table :permission_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :permission, index: true
      t.timestamps
    end
  end
end
