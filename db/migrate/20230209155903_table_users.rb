class TableUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |user|
      user.string :name
      user.string :email
    end
  end
end
