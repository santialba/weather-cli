# frozen_string_literal: true

require 'weather/cli/version'
require 'weather/cli/menu'
require 'weather/cli/http_client'
require 'weather/cli/parser'
require 'faraday'
require 'byebug'
require 'nokogiri'

module Weather
  # Main module of Weather Cli
  module Cli
    DIVISION_CODE = 102
    class Error < StandardError; end
    def self.init
      options = Menu.new(ARGV).prompt
      response = HttpClient.new({ division: DIVISION_CODE }).api_request
      location_id = Parser.new(response.body).retrieve_id_from_location(options['location'])
      response = HttpClient.new({ localidad: location_id }).api_request
      result(Parser.new(response.body), options)
    end

    def self.result(parser, options)
      if options['-today']
        puts "Temperature of the day between #{parser.max_temperatures.first}º-#{parser.min_temperatures.first}º"
      end
      puts "Average of #{average(parser.max_temperatures)}º maximum temperature during the week" if options['-av_max']
      puts "Average of #{average(parser.min_temperatures)}º minimum temperature during the week" if options['-av_min']
    end

    def self.average(temperatures)
      temperatures.sum / temperatures.size
    end
  end
end
