require 'net/http'
require 'json'

module ApiClients
  module OpenBreweryDb
    class Client
      API_ENDPOINT = 'https://api.openbrewerydb.org/'.freeze

      def get_breweries(page_size = 50, page = 1)
        uri = URI(API_ENDPOINT + "breweries?per_page=#{page_size}&page=#{page}")

        begin
          raw_response = Net::HTTP.get(uri)
          response = JSON.parse(raw_response)
        rescue
          'Something went wrong'
        end
      end
    end
  end
end
