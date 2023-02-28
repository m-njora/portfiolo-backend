class AddCreatedAt < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :createdAt, :datetime
    add_column :skills, :createdAt, :datetime
  end
end
