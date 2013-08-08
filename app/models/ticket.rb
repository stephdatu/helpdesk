class Ticket < ActiveRecord::Base
  validates :name, :subject, presence: true
  has_many :posts
end
