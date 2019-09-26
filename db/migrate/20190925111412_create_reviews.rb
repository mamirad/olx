class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :review_text
      t.references :user, null: false, foreign_key: true
      t.references :ad, null: false, foreign_key: true

      t.timestamps
    end
  end
end
