class Paragraph < ApplicationRecord

  before_create :set_position

  acts_as_list
  has_rich_text :content

  has_many :sub_paragraphs, inverse_of: :paragraph, dependent: :destroy
  accepts_nested_attributes_for :sub_paragraphs, reject_if: :all_blank, allow_destroy: true

  scope :ordered_by_position, -> { order(position: :asc) }

  validates :title, presence: true

  def set_position
    self.position = Paragraph.all.count + 1
  end

end
