class Player < ApplicationRecord
  has_many :comments

  validates: name, uniqueness: true
end
