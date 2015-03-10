json.array!(@pictures) do |picture|
  json.extract! picture, :id, :description, :site_file_id
  json.url picture_url(picture, format: :json)
end
