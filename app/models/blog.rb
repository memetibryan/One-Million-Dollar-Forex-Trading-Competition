class Blog < ApplicationRecord
	validates :first_name, :last_name, :phone, :email, :country, :presence => true
end