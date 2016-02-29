json.array!(@lists) do |list|
  json.extract! list, :id, :name, :description, :duration, :dead_line, :user_id
  json.url list_url(list, format: :json)
end
