class Competitions < ActiveRecord::Migration[5.1]
  	def change
  	create_table :competitions do |t|
  		t.column :name, :text
  		t.column :email, :text
  		t.column :phone, :bigint

  		t.timestamps()
  	end
  end
end
