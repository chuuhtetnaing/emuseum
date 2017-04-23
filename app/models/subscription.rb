class Subscription < ApplicationRecord
	has_one :museum_owner
	validates :email_address, presence:true
end
