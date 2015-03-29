require 'ostruct'

module R4Nass
  class Statistics 
    include HTTParty
    base_uri BASE_URI

    def initialize
      
      # @options = {query: { key: Application.api_key } }

      #    key, year__GE: start_year, state_alpha: state_abbreviation, county_ansi: county_id,
      #     statisticcat_desc: 'YIELD', commodity_desc: ['CORN,SOYBEANS'] }}
    end

    def get( options ) 
      options[:key] = Application.api_key unless options.key?(:key)
      result = self.class.get( "/api/api_GET/", {query: options} )
      if result['error'].nil?
        result['data'].map do |row|
          OpenStruct.new( row )
        end
      else
        raise result['error'] 
      end

    end

  end


end
