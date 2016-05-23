class CreatePersmissions < ActiveRecord::Migration
  def change
    create_table :persmissions do |t|
      t.string :name

      t.timestamps
    end
  end
end
