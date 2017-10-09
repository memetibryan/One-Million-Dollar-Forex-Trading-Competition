class Blogs < ActiveRecord::Migration[5.1]
  def change
  	create_table :blogs do |t|
  		t.column :first_name, :text
  		t.column :last_name, :text
  		t.column :email, :text
  		t.column :phone, :bigint
  		t.column :country, :text

  		t.timestamps()
  	end
  end
end
