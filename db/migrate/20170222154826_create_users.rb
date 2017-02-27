class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.string :fname
  		t.string :lname
  		t.string :username
  		t.string :password
  		t.string :email
  		t.boolean :admin, default: false
      t.integer :user_id
      t.timestamps
    end
  end
end
