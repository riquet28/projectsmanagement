class Result < ApplicationRecord

  belongs_to :scenario, optional: true

  enum dev: { empty: 0, success: 1, failure: 2, untested: 3, comment: 4 }, _prefix: :dev
  enum staging: { empty: 0, success: 1, failure: 2, untested: 3, comment: 4 }, _prefix: :staging

end
