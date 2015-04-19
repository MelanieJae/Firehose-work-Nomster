Geocoder.configure(
	:lookup => :bing,
	:api_key => ENV['GEOCODER_API_KEY'],
	:always_raise => :all,
	)

