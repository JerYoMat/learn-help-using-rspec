require 'rails_helper'

RSpec.describe LearnHelper, type: :model do
  # Association test
  it { should belong_to(:user) }
  it { should belong_to(:topic) }
  # Validation tests
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:url) }
end
