class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :user_id

    t.timestamps
    end
  end
end
