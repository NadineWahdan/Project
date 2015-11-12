class Dashboard < ActiveRecord::Base
	belongs_to :user
	has_many :followers
	has_many :famous
end
