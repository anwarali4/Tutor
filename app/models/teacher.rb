class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :course_teachers, dependent: :destroy
  has_many :courses, through: :course_teachers

  accepts_nested_attributes_for :course_teachers

  validates :name, :email, presence: true
  validates :email, uniqueness: true

end
