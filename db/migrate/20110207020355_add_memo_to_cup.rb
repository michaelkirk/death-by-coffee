class AddMemoToCup < ActiveRecord::Migration
  def self.up
    add_column :cups, :memo, :string
  end

  def self.down
    remove_column :cups, :memo
  end
end
