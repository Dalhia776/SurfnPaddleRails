json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :summary, :author
  json.url post_url(post, format: :json)
end
