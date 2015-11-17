class Wall < ActiveRecord::Base
	has_many :followers

	def self.up
      create_table :Wall do |t|
         t.column :post, :string, :limit => 100, :null => true
         t.column :time, :date
end
