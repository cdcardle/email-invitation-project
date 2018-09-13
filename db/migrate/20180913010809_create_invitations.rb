class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.string :name
      t.integer :age
      t.string :location_name
      t.string :location_address
      t.date :date
      t.time :time
      t.timestamps
    end
  end
end
