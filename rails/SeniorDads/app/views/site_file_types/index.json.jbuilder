json.array!(@site_file_types) do |site_file_type|
  json.extract! site_file_type, :id, :title, :description
  json.url site_file_type_url(site_file_type, format: :json)
end
