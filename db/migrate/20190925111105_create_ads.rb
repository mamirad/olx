class CreateAds < ActiveRecord::Migration[6.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.references :category, null: false, foreign_key: true
      t.references :sub_category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :condition
      t.text :detail
      t.string :city
      t.string :address
      t.boolean :published
      t.string :contact
      t.integer :price

      t.timestamps
    end
  end
end
