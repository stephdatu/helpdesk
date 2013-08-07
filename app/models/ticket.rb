class Ticket < ActiveRecord::Base
  validates :subject, presence: true
end
