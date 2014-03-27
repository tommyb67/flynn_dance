class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :email, null: false, unique: true
      t.string :phone_number
    end
  end
end
