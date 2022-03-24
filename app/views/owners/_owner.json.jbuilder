json.extract! owner, :id, :name, :email, :avatar, :created_at, :updated_at
json.url owner_url(owner, format: :json)
