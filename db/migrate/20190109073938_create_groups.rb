class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :nickname, null: false, index: true, unique: true
      t.timestamps
    end
  end
end