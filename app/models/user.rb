class User < ActiveRecord::Base
	belongs_to :dashboard
	has_many :followers
	validates_presence_of :fname
	validates_presence_of :lname
	validate :that_born_on_is_not_in_the_future
def that_born_on_is_not_in_the_future self.errors.add :dob, 'is in the future' \
unless self.born_on <= Date.today end

	def self.up
      create_table :User do |t|
         t.column :fname, :string, :limit => 32
         t.column :lname, :string, :limit => 32
         t.column :dob, :date
         t.column :city, :string, :limit => 32
         t.column :country, :string, :limit => 32
         t.column :gender, :string, :limit => 32
         t.column :profilePicture, :string, :limit => 100
    	 t.column :facebook, :string, :limit => 100     
end

