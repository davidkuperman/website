class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :name
      t.string :lastname
      t.string :company
      t.string :role
      t.string :email
      t.integer :phone
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
