class Book < ApplicationRecord
  enum status: {
    '所 持': 0, # possession
    '手放す': 1, # relinquish
  }

  mount_uploader :picture, PictureUploader

  #scope :full_text_search, -> (query) {
  #  where("MATCH(title) AGAINST(? IN BOOLEAN MODE)", "*D+ #{query}")
  #}

  def self.search(search)
    return Book.all unless search
    Book.where(['title LIKE ?', "%#{search}%"])
  end
end
