class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.integer :user_id
      t.integer :networkee_id
      t.references :user, index: true
      t.references :networkee, index: true

      t.timestamps
    end
  end
end
