class Seminar < ApplicationRecord
	validates :name, :email, :telephone, :presence => true
end