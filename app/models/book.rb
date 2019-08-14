class Book < ApplicationRecord
  mount_uploader :picture, PictureUploader

  scope :full_text_search, -> (query) {
    where("MATCH(title) AGAINST(? IN BOOLEAN MODE)", "*D+ #{query}")
  }
end
