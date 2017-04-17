class Question < ApplicationRecord
  has_many :answers
  has_many :comments, as: :commentable

  validates_presence_of :title, :body
end
