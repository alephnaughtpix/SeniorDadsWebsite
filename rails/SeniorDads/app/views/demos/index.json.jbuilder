json.array!(@demos) do |demo|
  json.extract! demo, :id, :ref, :name, :platform, :size, :release_date, :site_file_id, :gallery_id
  json.url demo_url(demo, format: :json)
end
