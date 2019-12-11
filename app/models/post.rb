# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user, presence: true
  validates :body, length: { minimum: 10, maximum: 310 }
end
