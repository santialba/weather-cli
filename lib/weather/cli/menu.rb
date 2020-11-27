# frozen_string_literal: true

module Weather
  module Cli
    # Show the weather menu
    class Menu
      COMMAND_OPTIONS = ['-today', '-av_max', '-av_min'].freeze

      def initialize(args)
        @args = args
      end

      def prompt
        options = {}
        if COMMAND_OPTIONS.include?(@args.first) && @args.size == 2
          options[@args.first] = true
          options['location'] = @args.last
        else
          show_help
        end
        options
      end

      private

      def show_help
        puts 'Usage:  weather-cli [options] [location]'
        puts "\t-today\tTemperature of the day"
        puts "\t-av_max\tAverage of the maximum temperature during the week"
        puts "\t-av_min\tAverage of the minimum temperature during the week"
        exit
      end
    end
  end
end
