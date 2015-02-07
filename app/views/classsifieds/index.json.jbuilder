json.array!(@classsifieds) do |classsified|
  json.extract! classsified, :id, :title, :postedDate, :details, :expireDate, :categoryid, :contactId, :status
  json.url classsified_url(classsified, format: :json)
end
