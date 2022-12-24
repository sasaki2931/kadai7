class Share < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user,optional: true
    has_many :favorites, dependent: :destroy 
end
