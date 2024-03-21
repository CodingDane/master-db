class CreateWaLiMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :wa_li_movies do |t|
      t.string :title
      t.string :overview
      t.string :posterurl
      t.float :rating

      t.timestamps
    end
  end
end
