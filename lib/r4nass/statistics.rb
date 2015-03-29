module R4Nass
  class Base
    include HTTParty
    base_uri BASE_URI

    def initialize( key, start_year, state_abbreviation, county_id )
      @options = {query: { key: key, year__GE: start_year, state_alpha: state_abbreviation, county_ansi: county_id,
          statisticcat_desc: 'YIELD', commodity_desc: ['CORN,SOYBEANS'] }}
    end

    def get_yields
      result = self.class.get( "/api/api_GET/", @options )
      result['data']
    end

  end


end
