class LearnHelper < ApplicationRecord
  validates :title, :url, presence: true 

  belongs_to :user 
  belongs_to :topic 
end
