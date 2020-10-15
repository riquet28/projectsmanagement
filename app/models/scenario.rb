class Scenario < ApplicationRecord

  has_many :results, inverse_of: :scenario, dependent: :destroy
  belongs_to :ticket

  accepts_nested_attributes_for :results, reject_if: :all_blank, allow_destroy: true

  validates :description, presence: true

end
