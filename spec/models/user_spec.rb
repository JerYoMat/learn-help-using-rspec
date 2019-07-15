# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user_attributes) do
    { 
      id: 1,
      name: 'some name',
      email: 'user@test.com',
      password: 'password',
      github_username: 'JerYo',
      status: 'student'
    }
  end
  
  let(:missing_name) { user_attributes.except(:name) }
  let(:missing_email) { user_attributes.except(:email) }
  let(:missing_password) { user_attributes.except(:password) }
  let(:missing_github_username) { user_attributes.except(:github_username) }
  let(:missing_status) { user_attributes.except(:status) }
 
  let(:topic) { Topic.create(title: 'basics', order: 1) }

  

  it 'is valid when expected' do
    expect(User.new(user_attributes)).to be_valid
  end

  it 'is invalid without a name' do
    expect(User.new(missing_name)).to be_invalid
  end

  it 'is invalid without email' do
    expect(User.new(missing_email)).to be_invalid
  end

  it 'is invalid if email format does not match' do
    user = User.new(user_attributes)
    user.email = 'user'
    expect(user).to be_invalid
  end

  it 'has secure password' do
    user = User.create(user_attributes)
    expect(User.new(missing_password)).to be_invalid
    expect(user.authenticate('dog')).to eq(false)
    expect(user.authenticate('password')).to eq(user)
  end

  it 'is invalid without github username' do
    expect(User.new(missing_github_username)).to be_invalid
  end

  it 'is invalid without status' do
    expect(User.new(missing_status)).to be_invalid
  end

  it 'defaults to admin => false' do
    user = User.new(user_attributes)
    expect(user.admin).to eq(false)
  end

  it { should have_many(:learn_helpers) }
end
