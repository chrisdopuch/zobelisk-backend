json.array!(@comments) do |comment|
  json.extract! comment, :id, :email, :timestamp, :text_body
  json.url comment_url(comment, format: :json)
end
