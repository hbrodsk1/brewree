class UpdateBreweriesJob < ApplicationJob
  queue_as :default

  def perform(*args)
    obdb_client = ApiClients::OpenBreweryDb::Client.new
    page_size = 50
    page = 1

    loop do
      breweries_json = obdb_client.get_breweries(page_size, page)

      if breweries_json.empty?
        break
      else
        breweries = breweries_json.each do |brewery|
          brewery_attrs =
          {
            name: brewery['name'],
            brewery_type: brewery["brewery_type"],
            street: brewery["street"],
            address_2: brewery["address_2"],
            address_3: brewery["address_3"],
            city: brewery["city"],
            state: brewery["state"],
            county_province: brewery["county_province"],
            postal_code: brewery["postal_code"],
            country: brewery["country"],
            longitude: brewery["longitude"],
            latitude: brewery["latitude"],
            phone: brewery["phone"],
            website_url: brewery["website_url"],
            obdb_id: brewery['obdb_id']
          }

          Brewery.create!(brewery_attrs)
        end

        page += 1
      end
    end
  end
end
