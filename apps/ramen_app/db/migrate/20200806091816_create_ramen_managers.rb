class CreateRamenManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :ramen_managers do |t|
      t.string :email, null: false #メール
      t.string :hashed_password #パスワード

      t.timestamps
    end
    add_index :ramen_managers, "LOWER(email)", unique: true
  end
end
