class Member::Post < ApplicationRecord
    mount_uploader :image, ImageUploader
end
