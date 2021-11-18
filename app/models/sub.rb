class Sub < ApplicationRecord
  # will destroy all associated topics if sub is destroyed
  has_many :topics, dependent: :destroy
end
