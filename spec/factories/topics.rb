# frozen_string_literal: true

FactoryBot.define do
  factory :topic do
    title { Faker::Lorem.word }
  end
end