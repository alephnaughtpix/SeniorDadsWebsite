json.array!(@site_files) do |site_file|
  json.extract! site_file, :id, :name, :url, :description, :site_file_type_id, :order
  json.url site_file_url(site_file, format: :json)
end
