class FunctionnalTest < ApplicationRecord
  acts_as_list

  enum tracker: [ :anomaly, :evolution, :assistance, :user_story ]

  validates :reference, :tracker_number, :title, presence: true
  validates :url_link, presence: true , url: true

end
