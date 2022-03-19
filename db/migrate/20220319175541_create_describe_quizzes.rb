class CreateDescribeQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :describe_quizzes do |t|
      t.references :stage, null: false, foreign_key: true
      t.string :image
      t.text :content

      t.timestamps
    end
  end
end
