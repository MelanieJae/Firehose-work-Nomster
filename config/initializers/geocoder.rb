Geocoder.configure(
	#geocoding service: Google Geocoder API
	:lookup => :google,
	:api_key => ENV['GEOCODER_API_KEY'],
	:always_raise => :all,
	)

