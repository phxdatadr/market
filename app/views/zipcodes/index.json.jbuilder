json.array!(@zipcodes) do |zipcode|
  json.extract! zipcode, :id, :details, :zip, :countOfCity, :cityStName, :lastLineCity, :state, :county, :lat_degree, :lon_degree, :lat, :long, :areacode, :timeZoneLabel
  json.url zipcode_url(zipcode, format: :json)
end
