class Subscription < ApplicationRecord
	has_one :museum_owner
	belongs_to :division
	validates :email_address, presence:true
end
