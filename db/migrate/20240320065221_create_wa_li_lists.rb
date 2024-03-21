class CreateWaLiLists < ActiveRecord::Migration[7.1]
  def change
    create_table :wa_li_lists do |t|
      t.string :name
      t.references :wa_li_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
