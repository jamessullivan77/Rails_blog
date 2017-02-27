class CreateHomelesses < ActiveRecord::Migration[5.0]
  def change
    create_table :homelesses do |t|
    		t.binary :picture
    		t.string :street
    		t.string :street_number
    		t.string :items_list
    		t.integer :homeless_id
        t.integer :user_id
      t.timestamps
    end
  end
end
