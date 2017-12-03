class Comment < ApplicationRecord
  belongs_to :article
  validates :reader, presence: true
  validates :content, presence: true
  validates :reader, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
