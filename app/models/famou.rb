class Famou < ActiveRecord::Base
	belongs_to :dashboard
	
	def self.up
      create_table :Famou do |t|
         t.column :quote, :string, :limit => 100, :null => true
         t.column :Author, :string
end
