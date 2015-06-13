class Group < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates_length_of :name, maximum: 1
end
