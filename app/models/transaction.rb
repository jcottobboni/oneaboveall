class Transaction < ApplicationRecord
  enum transaction_type: [ :income, :expense ]
  belongs_to :category
  has_many_attached :uploads
end
