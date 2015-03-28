module R4Nass
  class Application
    class << self
      def configure( options = {} )
        check_for_required_options( options )
        @@api_key = options[:api_key]
      end

      def api_key
        @@api_key
      end

      private

      def check_for_required_options( options )
         [:api_key].each do |k|
           raise 'Missing required :#{ k } option' unless options.key?(k)
         end
      end
    end
  end
end
