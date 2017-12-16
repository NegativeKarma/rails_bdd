class Comment < ApplicationRecord
  belongs_to :article
  validates :content, presence: true
  validates :reader, allow_blank: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
