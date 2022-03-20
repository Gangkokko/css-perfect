class CreateSelectQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :select_quizzes do |t|
      t.references :stage, null: false, foreign_key: true
      t.string :content, null: false
      t.string :image
      t.string :first_choice, null: false
      t.string :second_choice, null: false
      t.string :third_choice, null: false
      t.string :forth_choice, null: false
      t.integer :answer_number, null: false

      t.timestamps
    end
  end
end
