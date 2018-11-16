class Paper < ApplicationRecord
  validates :title, presence: true
  validates :venue, presence: true

  belongs_to :author, optional: true
end
