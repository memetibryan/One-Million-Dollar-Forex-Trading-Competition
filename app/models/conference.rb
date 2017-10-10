class Conference < ApplicationRecord
	validates :name, :email, :telephone, :presence => true
end