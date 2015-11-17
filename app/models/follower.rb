class Follower < ActiveRecord::Base
	has_and_belongs_to_many :walls
	validates_presence_of :accept
	attr_accessible :accept

	def self.up
      create_table :Follower do |t|
         t.column :accept, :bool, :default => false      
end
