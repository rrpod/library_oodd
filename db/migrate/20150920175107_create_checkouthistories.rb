class CreateCheckouthistories < ActiveRecord::Migration
  def change
    create_table :checkouthistories do |t|
      t.string :isbn
      t.string :email
      t.string :tester
      t.string :checkin
      t.string :checkout
      t.timestamp null: false
    end
  end
end
