class User < ApplicationRecord
    has_secure_password
    has_many :attempts
    has_many :quizzes, class_name: "Quiz", foreign_key: "author_id"
    validates :username, uniqueness: true
    
end
