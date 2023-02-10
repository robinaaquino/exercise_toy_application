class User < ApplicationRecord
    has_many :record
    validates :name, presence: true
    validates :email, presence: true
end