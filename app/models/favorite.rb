class Favorite < ApplicationRecord
  belongs to :user
  belonga to :book

  validates_uniqueness_of :book_id, scope: :user_id
end
