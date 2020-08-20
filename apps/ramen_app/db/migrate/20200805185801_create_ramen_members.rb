class CreateRamenMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :ramen_members do |t|
      t.string :email, null: false #メールアドレス
      t.string :name, null: false #ニックネーム
      t.string :hashed_password #パスワード

      t.timestamps
    end
    add_index :ramen_members, "LOWER(email)", unique: true
  end
end
