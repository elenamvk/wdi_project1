class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :dob, :date
    add_column :users, :about, :text
  end
end
