require 'rails_helper'

RSpec.describe Brewery, type: :model do
  subject { create(:brewery) }

  # Testing Validations
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:obdb_id) }

  #Testing Associations
  it { should have_many(:reviews) }

  it 'is valid with valid attributes' do
    brewery = create(:brewery)

    expect(brewery.valid?).to be( true )
  end
end