class SubParagraph < ApplicationRecord

  belongs_to :paragraph, optional: true

  has_rich_text :content

  validates :title, presence: true

end
