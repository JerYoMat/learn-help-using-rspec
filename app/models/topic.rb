# frozen_string_literal: true

class Topic < ApplicationRecord
  validates :title, presence: true 
  
  has_many :learn_helpers
  has_many :users, through: :learn_helpers

end
