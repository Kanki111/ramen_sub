class Member::Post < ApplicationRecord
    has_many :comments, dependent: :destroy

    mount_uploader :image, ImageUploader
    has_rich_text :content
end
