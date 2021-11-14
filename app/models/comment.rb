class Comment < ApplicationRecord
  validates :text, presence: true
  validates :text, length: { minimum: 2 }
  validates :gameweek, inclusion: { :in => 0..38 }
  validates :player_id, presence: true
end
