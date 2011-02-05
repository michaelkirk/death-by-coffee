class CreateCups < ActiveRecord::Migration
  def self.up
    create_table :cups do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :cups
  end
end
