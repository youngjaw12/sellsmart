json.extract! item, :id, :name, :price, :location, :condition, :description, :image_video, :created_at, :updated_at
json.url item_url(item, format: :json)
