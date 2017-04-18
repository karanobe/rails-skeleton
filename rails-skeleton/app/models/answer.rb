class Answer < ApplicationRecord
  belongs_to  :user
  belongs_to :question
  has_many   :comments, as: :commentable

  validates_presence_of :body, :answerer, :user_id
end
