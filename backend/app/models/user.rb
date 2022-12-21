class User < ApplicationRecord
    has_secure_password
    has_many :attempts
    has_many :quizzes
    validates :username, uniqueness: true

end
