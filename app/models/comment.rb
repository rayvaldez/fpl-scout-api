class Comment < ApplicationRecord
  belongs_to :player

  validates :text, presence: true
  validates :text, length: { minimum: 2 }
  validates :gameweek, inclusion: { :in => 0..38 }
end
