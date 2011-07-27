class CreateDetails < ActiveRecord::Migration
  def self.up
    create_table :details do |t|
      t.integer :resource_id
      t.string :resource_type
      t.text :content
      t.timestamps
    end
  end

  def self.down
    drop_table :details
  end
end
