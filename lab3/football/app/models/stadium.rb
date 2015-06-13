class Stadium < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
    validates :city, presence: true, uniqueness: true
    validates :build_date, presence: true
    validates :max_capacity, presence: true, numericality: {only_integer: true}, numericality: {greater_than: 0}
    validates :photo, presence: true, format: {with: /http(s)?:\/\/[A-Za-z0-9+&@#%?=~_|\.|\-|\/]+/i, message: "Error -> Invalid image"}
end
