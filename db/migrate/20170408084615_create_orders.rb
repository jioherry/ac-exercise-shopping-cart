class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|

    	t.integer :user_id
    	t.string :name
    	t.string :phone
    	t.string :address
    	t.string :email

      t.timestamps
    end
  end
end
