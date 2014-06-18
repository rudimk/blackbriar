json.array!(@harbors) do |harbor|
  json.extract! harbor, :id, :process_id, :name, :subdomain, :port, :user_id, :password, :state
  json.url harbor_url(harbor, format: :json)
end
