class Member::Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_rich_text :content
end
