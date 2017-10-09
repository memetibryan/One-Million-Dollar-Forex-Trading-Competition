class Awards < ActiveRecord::Migration[5.1]
  def change
  	create_table :awards do |t|
  		t.column :company_name, :text
  		t.column :company_website, :text
  		t.column :name, :text
  		t.column :address, :text
  		t.column :phone_number, :bigint
  		t.column :email, :text
  		t.column :ticket_quantity, :integer
  		t.column :security_code, :integer
  		t.column :message, :text

  		t.timestamps()
  	end
  end
end
