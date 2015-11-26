json.array!(@storeinfos) do |storeinfo|
  json.extract! storeinfo, :id, :latitude, :longitude, :address, :name, :url, :sun_time, :mon_time, :tue_time, :web_time, :thu_time, :fri_time, :sta_time
  json.url storeinfo_url(storeinfo, format: :json)
end
