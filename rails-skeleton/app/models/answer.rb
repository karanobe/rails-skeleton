class Answer < ApplicationRecord
  belongs_to :question

  validates_presence_of :body, :answerer
end
