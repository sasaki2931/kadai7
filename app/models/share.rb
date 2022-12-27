class Share < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user,optional: true
    has_many :favorites, dependent: :destroy 
    validates :title, length:{in: 1..140}
    validates :content, length:{in: 1..140}
end
