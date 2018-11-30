json.extract! wishlist, :id, :name, :child_id, :buy, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
