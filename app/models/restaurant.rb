class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = %w[Chinese Italian Japanese French Belgian].freeze

  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
