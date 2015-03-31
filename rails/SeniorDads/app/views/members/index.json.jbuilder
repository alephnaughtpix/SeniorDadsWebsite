json.array!(@members) do |member|
  json.extract! member, :id, :name, :title, :joined, :join_reason, :function, :first_computer, :any_other_comments, :gallery_id, :category_id, :order
  json.url member_url(member, format: :json)
end
