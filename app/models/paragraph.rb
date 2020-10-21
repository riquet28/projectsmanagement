class Paragraph < ApplicationRecord

  before_create :set_position

  acts_as_list
  has_rich_text :content

  scope :ordered_by_position, -> { order(position: :asc) }

  validates :title, :position, presence: true

  def set_position
    self.position = Paragraph.all.count + 1 # Temporaire, ensuite sera delivery_report.paragraphs.count
  end

end
