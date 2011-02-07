class AddCupName < ActiveRecord::Migration
  def self.up
    add_column(:cups, :drank_by, :string)
  end

  def self.down
    remove_column(:cups, :drank_by)
  end
end
