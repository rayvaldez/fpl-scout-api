class Comment < ApplicationRecord
  validates :text, presence: true
  validates :text, length: { minimum: 2 }
  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :player_id, presence: true
end
