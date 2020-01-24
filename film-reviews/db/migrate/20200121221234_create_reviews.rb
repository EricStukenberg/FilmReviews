class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :film_title
      t.string :content
      t.float :score
      t.integer :user_id
      t.integer :film_id

      t.timestamps
    end
  end
end
