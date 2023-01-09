class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :category
      t.string :title
      t.string :description
      t.string :image_url
      t.integer :author_id 
      t.integer :question_count
      
      t.timestamps
    end
  end
end
