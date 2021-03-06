class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :description
      t.string :author
      t.string :status
      t.string :current_owner
      t.timestamps null: false
    end
  end
end
