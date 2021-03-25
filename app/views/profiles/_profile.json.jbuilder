json.extract! profile, :id, :user_id, :name, :DOB, :contact, :location, :created_at, :updated_at
json.url profile_url(profile, format: :json)
