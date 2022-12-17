class QuizSerializer < ActiveModel::Serializer
  attributes :id, :category, :title, :description, :image_url
  has_one :author
  has_many :questions
end
