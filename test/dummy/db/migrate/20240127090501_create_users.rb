# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.boolean :admin
      t.integer :age
      t.string :country_code

      t.timestamps
    end
  end
end
