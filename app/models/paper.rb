class Paper < ApplicationRecord
  validates :title, presence: true

  belongs_to :author, optional: true
end
