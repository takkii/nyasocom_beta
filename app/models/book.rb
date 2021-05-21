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
    # Book.where(['title LIKE ?', "%#{search}%"]) # デフォルトの検索
    # Kaminari.paginate_array(Book.where(['title LIKE ?', "%#{search}%"])).page(表示するページ番号).per(件数)
    Kaminari.paginate_array(Book.where(['title LIKE ?', "%#{search}%"])).page(1).per(15)
  end
end
