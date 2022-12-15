class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :category, :format, :difficulty, :question, :correct_answer, :incorrect_answer_1, :incorrect_answer_2, :incorrect_answer_3
end
