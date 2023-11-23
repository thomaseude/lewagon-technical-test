class Job < ApplicationRecord
  belongs_to :user

  enum status: [:draft, :published, :closed]
end
