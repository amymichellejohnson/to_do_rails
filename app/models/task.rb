class Task < ActiveRecord::Base
  belongs_to :list

  scope :complete, -> { where(done: true) }
  scope :not_complete, -> { where(done: false) }
  validates :description, :presence => true
end
