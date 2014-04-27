json.array!(@assignees) do |assignee|
  json.extract! assignee, :id, :name, :department
  json.url assignee_url(assignee, format: :json)
end

