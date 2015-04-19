Geocoder.configure(
	:lookup => :bing,
	#geocoding service: Google Geocoder API
	:api_key => ENV['GEOCODER_API_KEY'],
	:always_raise => :all,
	)

