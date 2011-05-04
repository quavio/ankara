class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.float :original_price
      t.float :deal_price
      t.integer :store_id
      t.datetime :start_at
      t.datetime :end_at
      t.integer :max_purchases
      t.integer :min_purchases

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
