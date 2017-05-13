class Lecture < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  acts_as_votable
  has_many :comments
end
