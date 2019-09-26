class Ad < ApplicationRecord
  belongs_to :category
  belongs_to :sub_category
  belongs_to :user
  has_many :pictures, as: :imageable
  has_many :reviews
  has_many :bids

end
