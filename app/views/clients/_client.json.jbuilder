json.extract! client, :id, :name, :description, :client_ID, :created_at, :updated_at
json.url client_url(client, format: :json)
