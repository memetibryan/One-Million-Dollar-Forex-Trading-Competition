class Competition < ApplicationRecord
	validates :name, :phone, :email, :presence => true
end