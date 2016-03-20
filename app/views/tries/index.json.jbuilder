json.array!(@tries) do |try|
  json.extract! try, :id, :count
  json.url try_url(try, format: :json)
end
