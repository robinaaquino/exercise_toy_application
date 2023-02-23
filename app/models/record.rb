class Record < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    validates :content, presence: true, length: { maximum: 140 }
    has_many_attached :images
end