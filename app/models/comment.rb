class Comment < ApplicationRecord
  belongs_to :post
  has_rich_text :comment
end