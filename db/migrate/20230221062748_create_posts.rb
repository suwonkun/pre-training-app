class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :topic, null: false, foreign_key: true
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
