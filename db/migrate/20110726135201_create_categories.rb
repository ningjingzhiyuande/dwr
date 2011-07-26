class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.integer :user_id
      t.string :name
      t.integer :parent
      t.string :kind

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
