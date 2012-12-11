class CreateMovies < ActiveRecord::Migration
  def change
     create_table :movies do |t|
      t.string :title
      t.text :cast
      t.string :duration
      t.string :genre
      t.string :rating
      t.timestamps
    end
  end
end
