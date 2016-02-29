json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :comment, :duration, :due_date, :list_id
  json.url task_url(task, format: :json)
end
