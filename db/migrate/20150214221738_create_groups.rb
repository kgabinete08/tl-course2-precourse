class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end

    create_table :groups_of_users, id: false do |t|
      t.belongs_to :user
      t.belongs_to :group
    end
  end
end
