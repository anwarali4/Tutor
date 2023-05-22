require "test_helper"

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  require 'rails_helper'

  RSpec.describe Teacher, :type => :model do
    subject {
    described_class.new(name: "Anwar",
      email: "anwar17ali@gmail.com",
      password: "sdasd",
      confirmation_password: "sdasd"
    }
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a start_date" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a end_date" do
    subject.confirmation_password = nil
    expect(subject).to_not be_valid
  end
end
