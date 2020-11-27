# coding: utf-8
# frozen_string_literal: true

module Weather
  module Cli
    # Parsing XML Data from response
    class Parser
      def initialize(response)
        @body = Nokogiri::XML(response)
      end

      def retrieve_id_from_location(location)
        @body.xpath("//name[contains(text(), '#{location}')]")&.attr('id')&.value
      end

      def max_temperatures
        check_city
        @body.xpath("//var[contains(., 'Temperatura Máxima')]/data")&.children&.map { |a| Integer(a.attr('value')) }
      end

      def min_temperatures
        check_city
        @body.xpath("//var[contains(., 'Temperatura Mínima')]/data")&.children&.map { |a| Integer(a.attr('value')) }
      end

      private

      def check_city
        error = @body.xpath('//error')
        return if error.empty?

        puts error.text
        exit
      end
    end
  end
end
