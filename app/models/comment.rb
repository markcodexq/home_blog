class Comment < ApplicationRecord
  belongs_to :post
  has_rich_text :comment
  validates :title, presence: true
  validates :comment, presence: true
end
