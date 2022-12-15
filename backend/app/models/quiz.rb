class Quiz < ApplicationRecord
    belongs_to :author, class_name: 'User'
    has_many :quiz_questions
    has_many :questions, through: :quiz_questions
end
