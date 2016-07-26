class CreateRelationships < ActiveRecord::Migration
  def change
  	create_table :relationships do |t|
  		t.integer :follower_id, null: false
  		t.integer :following_id, null: false

  		t.timestamps(null: false)

  	end
  end
end
