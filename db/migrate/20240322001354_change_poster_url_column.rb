class ChangePosterUrlColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :wa_li_movies, :posterurl, :poster_url
  end
end
