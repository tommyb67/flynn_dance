class Lesson < ActiveRecord::Base
  validates_presence_of :level, :category, :location, :datetime
end