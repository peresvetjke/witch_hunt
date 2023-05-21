class Type < ApplicationRecord
  has_many :entities_types
  has_many :entities, through: :entities_types
end
