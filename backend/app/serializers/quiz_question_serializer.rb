class QuizQuestionSerializer < ActiveModel::Serializer
  attributes :id, :weight
  has_one :question
  has_one :quiz
end
