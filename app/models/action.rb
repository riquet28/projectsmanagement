class Action < ApplicationRecord

  has_many :results
  belongs_to :ticket

  validates :description, presence: true

end
