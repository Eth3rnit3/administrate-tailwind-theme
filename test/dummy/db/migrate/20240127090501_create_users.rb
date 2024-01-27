class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.boolean :admin
      t.integer :age

      t.timestamps
    end
  end
end
