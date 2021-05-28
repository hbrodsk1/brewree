require 'rails_helper'

RSpec.describe Review, type: :model do
  # Testing Validations
  it { should validate_presence_of(:would_recommend) }

  # Testing Associations
  it { should belong_to(:brewery) }
end