class Ticket < ActiveRecord::Base
  validates :name, :subject, presence: true
end
