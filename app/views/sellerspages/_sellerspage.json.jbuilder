json.extract! sellerspage, :id, :sellers_name, :phone_number, :location, :profile_photo, :page_photo, :sellers_bio, :created_at, :updated_at
json.url sellerspage_url(sellerspage, format: :json)
