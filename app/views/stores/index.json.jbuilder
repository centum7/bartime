json.array!(@stores) do |store|
  json.extract! store, :id, :latitude, :langitude, :address, :name, :url, :sun_time, :mon_time, :tue_time, :web_time, :thu_time, :fri_time, :sta_time
  json.url store_url(store, format: :json)
end
