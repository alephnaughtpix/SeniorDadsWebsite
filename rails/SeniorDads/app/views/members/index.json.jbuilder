json.array!(@members) do |member|
  json.extract! member, :id, :name, :member_type_id, :title, :joined, :join_reason, :function, :first_computer, :any_other_comments, :site_file_id
  json.url member_url(member, format: :json)
end
