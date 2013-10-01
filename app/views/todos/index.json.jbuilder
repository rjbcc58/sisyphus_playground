json.array!(@todos) do |todo|
  json.extract! todo, :title, :isCompleted
  json.url todo_url(todo, format: :json)
end
