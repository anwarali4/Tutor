class Course < ApplicationRecord
  has_many :course_teachers, dependent: :destroy
  has_many :teachers, through: :course_teachers
  validate :name, presence: true
end
