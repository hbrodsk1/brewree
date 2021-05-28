FactoryBot.define do
  factory :brewery do
    name { "Zymurgy Brew Works" }
    brewery_type { "micro" }
    street { "22755 Hawthorne Blvd" }
    address_2 { nil }
    address_3 { nil }
    city { "Torrance" }
    state { "California" }
    county_province { nil }
    postal_code { "90505-3613" }
    country { "United States" }
    longitude { "-118.3524672" }
    latitude { "33.8635371" }
    phone { "3106502474" }
    website_url { "http://www.zymurgybrewworks.com" }
    obdb_id { "zymurgy-brew-works-torrance" }
    click_count { 0 }

    factory :invalid_brewery do
      name { nil }
    end
  end
end