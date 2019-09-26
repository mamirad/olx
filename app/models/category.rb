class Category < ApplicationRecord
	has_many :sub_categories
	has_many :pictures, as: :imageable
end
