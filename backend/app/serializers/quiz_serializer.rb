class QuizSerializer < ActiveModel::Serializer
  attributes :id, :category, :title, :description, :image_url, :question_count, :difficulty
  has_one :author
  has_many :questions
end
