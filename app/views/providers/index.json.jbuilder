json.array!(@providers) do |provider|
  json.extract! provider, :id, :brand_name, :description, :user_id
  json.url provider_url(provider, format: :json)
end
