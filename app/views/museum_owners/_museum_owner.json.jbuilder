json.extract! museum_owner, :id, :subscription_id, :username, :password, :url, :blocked, :created_at, :updated_at
json.url museum_owner_url(museum_owner, format: :json)
