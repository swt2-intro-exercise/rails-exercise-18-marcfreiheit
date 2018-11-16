class Paper < ApplicationRecord
  belongs_to :author, optional: true
end
