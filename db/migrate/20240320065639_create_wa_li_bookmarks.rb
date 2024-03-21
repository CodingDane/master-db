class CreateWaLiBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :wa_li_bookmarks do |t|
      t.string :comment
      t.references :wa_li_movie, null: false, foreign_key: true
      t.references :wa_li_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
