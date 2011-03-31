class RedoStreamIndicies < ActiveRecord::Migration
  def self.up
    remove_index :posts, :type
  end

  def self.down
  end
end
