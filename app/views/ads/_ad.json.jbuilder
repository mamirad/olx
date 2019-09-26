json.extract! ad, :id, :title, :category_id, :sub_category_id, :user_id, :condition, :detail, :city, :address, :published, :contact, :created_at, :updated_at
json.url ad_url(ad, format: :json)
