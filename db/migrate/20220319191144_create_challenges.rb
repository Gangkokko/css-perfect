class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.references :user, null: false, foreign_key: true
      t.references :stage, null: false, foreign_key: true
      t.integer :hp, null: false, default: 5
      t.integer :score, null: false, default: 0

      t.timestamps
    end
  end
end
