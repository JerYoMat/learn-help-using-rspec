require 'rails_helper'

RSpec.describe Topic, type: :model do
  # Association test
  it { should have_many(:learn_helpers) }

  # Validation tests
  it { should validate_presence_of(:title) }
end
