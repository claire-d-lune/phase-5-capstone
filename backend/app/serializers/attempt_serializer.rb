class AttemptSerializer < ActiveModel::Serializer
  attributes :id, :score, :created_at
  has_one :user
  has_one :quiz
end
