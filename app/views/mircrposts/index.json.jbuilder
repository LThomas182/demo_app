json.array!(@mircrposts) do |mircrpost|
  json.extract! mircrpost, :content, :user_id
  json.url mircrpost_url(mircrpost, format: :json)
end