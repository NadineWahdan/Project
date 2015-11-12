class CreateFamous < ActiveRecord::Migration
  def change
    create_table :famous do |t|

      t.timestamps null: false
    end
  end
end
