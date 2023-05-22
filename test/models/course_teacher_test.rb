require "test_helper"

class CourseTeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  require 'rails_helper'

  RSpec.describe Course, :type => :model do
  	course = Course.last
  	teacher = Teacher.last
    it "is valid with valid attributes" do
      expect(CourseTeacher.new).to be_valid
    end

    it "is not valid without a couse_id" do
      course = CourseTeacher.new(course_id: nil, teacher_id: teacher.id)
      expect(course).to_not be_valid
    end
    it "is not valid without a teacher_id" do
      course = CourseTeacher.new(course_id: course.id, teacher_id: nil)
      expect(course).to_not be_valid
    end
  end
end
