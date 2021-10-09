class Reply < ApplicationRecord
  belongs_to :comment

  validates :text, presence: true
  validates :text, length: { minimum: 2 }
end
