json.array!(@categories) do |category|
  json.extract! category, :id, :name, :title, :parent_category_id
  json.url category_url(category, format: :json)
end
