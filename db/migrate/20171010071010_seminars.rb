class Seminars < ActiveRecord::Migration[5.1]
  def change
  	create_table :seminars do |t|
  		t.column :name, :text
  		t.column :email, :text
  		t.column :telephone, :text
  		t.timestamps()
  	end
  end
end
