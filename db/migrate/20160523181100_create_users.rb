class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :status

      t.belongs_to :role, index: true

      t.timestamps null: false
    end
  end
end
