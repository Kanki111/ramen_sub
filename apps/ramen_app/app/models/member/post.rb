class Member::Post < ApplicationRecord
    has_many :comments

    mount_uploader :image, ImageUploader
    has_rich_text :content
end
