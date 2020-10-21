class Paragraph < ApplicationRecord

  has_rich_text :content

  validates :title, :position, presence: true

end
