# frozen_string_literal: true

class LearnHelper < ApplicationRecord
  belongs_to :user
  belongs_to :topic
end
