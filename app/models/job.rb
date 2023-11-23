class Job < ApplicationRecord
  belongs_to :user

  enum status: [:draft, :open, :closed]
end
