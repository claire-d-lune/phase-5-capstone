class Question < ApplicationRecord
    has_many :quiz_questions
    validates :question, uniqueness: true
end
