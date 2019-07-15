# frozen_string_literal: true

class Topic < ApplicationRecord
  has_many :learn_helpers
  has_many :users, through: :learn_helpers
  belongs_to :unit
end
