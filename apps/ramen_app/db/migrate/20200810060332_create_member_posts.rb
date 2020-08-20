class CreateMemberPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :member_posts do |t|
      t.string :title
      t.string :place
      t.string :image
      t.string :ramen_type
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
