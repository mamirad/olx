json.extract! review, :id, :review_text, :user_id, :ad_id, :created_at, :updated_at
json.url review_url(review, format: :json)
