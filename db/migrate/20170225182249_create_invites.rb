class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :user_id
      t.integer :invitee_id
      t.references :user, index: true
      t.references :invitee, index: true

      t.timestamps
    end
  end
end
