class Ticket < ApplicationRecord

  before_create :set_position

  acts_as_list

  has_many :scenarios
  has_many :results, :through => :scenarios


  scope :ordered_by_position, -> { order(position: :asc) }

  enum tracker: [ :anomaly, :evolution, :assistance, :user_story ]

  validates :issue_id, :title, presence: true
  validates :url_link, presence: true , url: true

  def set_position
    self.position = Ticket.all.count + 1 # Temporaire, ensuite sera delivery_report.tickets.count
  end

end
