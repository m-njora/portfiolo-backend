class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :prof_pic_url, :string
    add_column :users, :phone_number, :integer
    add_column :users, :zip_address,  :string
    add_column :users, :country, :string
    add_column :users, :profession, :string
    add_column :users, :education, :string
    add_column :users, :experience, :integer
    add_column :users, :skills, :string
    
  end
end
