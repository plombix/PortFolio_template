json.array!(@learners) do |learner|
  json.extract! learner, :id, :name, :notes, :role, :group_id
  json.url learner_url(learner, format: :json)
end
