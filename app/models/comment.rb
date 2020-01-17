# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user, presence: true
  validates :post, presence: true
  validates :body, length: { minimum: 10, maximum: 310 }
end
