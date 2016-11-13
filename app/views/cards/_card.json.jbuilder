json.extract! card, :id, :img_src, :description, :title, :user_id, :created_at, :updated_at
json.url card_url(card, format: :json)