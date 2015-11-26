json.array!(@shops) do |shop|
  json.extract! shop, :id, :latitude, :langitude, :address, :name, :url, :sun_time, :mon_time, :tue_time, :web_time, :thu_time, :fri_time, :sta_time
  json.url shop_url(shop, format: :json)
end
