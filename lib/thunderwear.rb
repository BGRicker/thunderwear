require "thunderwear/version"
require "forecast_io"
require "socket"
require "geocoder"

module Thunderwear
  class GetWeather

    def initialize(zip)
      @zip = zip
    end

    ForecastIO.api_key = 'dcbdb3b43d97ccfc1eb6379f3b97c9b0'

    def zippocoder
      Geocoder.coordinates(@zip)
    end

    def local_weather
      lat = zippocoder.first
      long = zippocoder.last
      ForecastIO.forecast(lat, long)
    end

    def currently
      local_weather.currently.apparentTemperature
    end

    def today
      local_weather.daily.summary
    end

    def stars
      star_count = today.length
      "*" * star_count + "*" * 28
    end

    def weather_me
      puts stars
      puts "\n\t - current temperature: #{currently}"
      puts "\t - today's summary: #{today}\n\n"
      puts stars
    end
  end
end
