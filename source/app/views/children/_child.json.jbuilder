json.extract! child, :id, :user, :password, :parent_id, :created_at, :updated_at
json.url child_url(child, format: :json)
