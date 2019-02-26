class Wave < ApplicationRecord
  has_many_attached :files
  validates :code, presence: true, uniqueness: true
end
