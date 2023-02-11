class User < ApplicationRecord
    has_secure_password
    has_many :attempts
    has_many :quizzes, class_name: "Quiz", foreign_key: "author_id"
    validates :username, uniqueness: true

    #This function will sum the score from each of the user's attempts. 
    def score
        total = 0  
        self.attempts.each do |t| 
            total += t.score 
        end
        total
    end

end