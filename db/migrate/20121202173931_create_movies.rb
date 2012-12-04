class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :cast
      t.string :genre
      t.string :rating
      t.string :duration

      t.timestamps
    end
  end
end
