json.array!(@retwets) do |retwet|
  json.extract! retwet, :id, :user_id, :twet_id
  json.url retwet_url(retwet, format: :json)
end
