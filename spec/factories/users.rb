# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email }
    password 'password'
    github_username {Faker::Internet.username }
    status 'student' 
    admin false
  end
end
