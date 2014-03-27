require 'spec_helper'

describe Lesson do
  it "is valid with a level, category, location and datetime" do
    lesson = Lesson.new(
      level: 'beginner',
      category: 'instruction',
      location: 'Aisling Center',
      datetime: Time.now)
    expect(lesson).to be_valid
  end

  it "is invalid without a level" do
    expect(Lesson.new(level: nil)).to have(1).errors_on(:level)
  end

  it "is invalid without a category" do
    expect(Lesson.new(category: nil)).to have(1).errors_on(:category)
  end

  it "is invalid without a location" do
    expect(Lesson.new(location: nil)).to have(1).errors_on(:location)
  end

  it "is invalid without a datetime" do
    expect(Lesson.new(datetime: nil)).to have(1).errors_on(:datetime)
  end
end