class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :initials
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :sex
      t.string :add1
      t.string :add2
      t.string :city
      t.string :postcode
      t.timestamps
    end
  end
end
