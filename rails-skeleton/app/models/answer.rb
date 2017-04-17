class Answer < ApplicationRecord
  belongs_to :question
  has_many   :comments, as: :commentable

  validates_presence_of :body, :answerer
end
