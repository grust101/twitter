class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username, null: false
  		t.string :first_name
  		t.string :last_name
  		t.string :email, null: false, uniqueness: true
  		t.string :password_digest

  		t.timestamps(null: false)
  	end
  end
end
