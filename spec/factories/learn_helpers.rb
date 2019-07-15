# frozen_string_literal: true

FactoryBot.define do
  factory :learn_helpers do
    title { Faker::Lorem.sentence }
    url { Faker::Internet.url }
    user_id nil
    topic_id nil 
  end
end
