class AddCheckToRequest < ActiveRecord::Migration
  def self.up
    add_column :requests, :check, :boolean
  end

  def self.down
    remove_column :requests, :check
  end
end
