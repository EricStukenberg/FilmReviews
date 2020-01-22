class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.float :score
      t.string :director
      t.string :description
      t.integer :release_year

      t.timestamps
    end
  end
end
