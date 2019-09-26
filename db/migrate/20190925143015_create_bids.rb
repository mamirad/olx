class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.integer :price
      t.references :ad, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
