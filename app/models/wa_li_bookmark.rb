class WaLiBookmark < ApplicationRecord
  belongs_to :wa_li_movie
  belongs_to :wa_li_list
end
