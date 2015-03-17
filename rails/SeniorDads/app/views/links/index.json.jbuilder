json.array!(@links) do |link|
  json.extract! link, :id, :name, :title, :url, :description, :category_id
  json.url link_url(link, format: :json)
end
