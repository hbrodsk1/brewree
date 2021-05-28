FactoryBot.define do
  factory :review do
    association :brewery, factory: :brewery

    would_recommend { true }
    comment { Faker::Lorem.sentence(word_count: 3) }

    factory :bad_review do
      would_recommend { false }
    end
  end
end