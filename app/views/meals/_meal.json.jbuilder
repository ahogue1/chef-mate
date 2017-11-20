json.extract! meal, :id, :name, :description, :photo, :category, :price, :user_id, :created_at, :updated_at
json.url meal_url(meal, format: :json)
