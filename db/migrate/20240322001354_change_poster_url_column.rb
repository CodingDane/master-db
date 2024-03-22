class ChangePosterUrlColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :wa_li_movie, :posterurl, :poster_url
  end
end
