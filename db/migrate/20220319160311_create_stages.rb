class CreateStages < ActiveRecord::Migration[6.1]
  def change
    create_table :stages do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.string :description, null: false
      t.string :image, null: false
      t.boolean :is_public, null: false, default: false

      t.timestamps
    end
  end
end
