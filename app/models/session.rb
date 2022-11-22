class Session < ApplicationRecord
  validates :data,presence:true
  has_many :students
end
