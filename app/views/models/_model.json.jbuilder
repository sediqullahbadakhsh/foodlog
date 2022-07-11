json.extract! model, :id, :Entry, :meal_type, :calories, :proteins, :carbohydrates, :fats, :created_at, :updated_at
json.url model_url(model, format: :json)
