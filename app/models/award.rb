class Award < ApplicationRecord
	validates :name, :company_name, :company_website, :address, :ticket_quantity, :email, :message, :phone_number, :presence => true
end