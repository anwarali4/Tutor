require "test_helper"

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  require 'rails_helper'

  RSpec.describe Course, :type => :model do
    it "is valid with valid attributes" do
      expect(Course.new).to be_valid
    end

    it "is not valid without a name" do
      course = Course.new(name: nil)
      expect(course).to_not be_valid
    end
  end
end

