class Student < ApplicationRecord
  validates :surname,presence: true
  validates :group, presence: true
  validates :geometryMark, presence: true
  validates :algebraMark, presence: true
  validates :infoMark, presence: true
  belongs_to :session
end