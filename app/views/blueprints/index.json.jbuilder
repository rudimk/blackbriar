json.array!(@blueprints) do |blueprint|
  json.extract! blueprint, :id, :name, :description, :harbor_id
  json.url blueprint_url(blueprint, format: :json)
end
