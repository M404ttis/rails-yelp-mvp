class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    # validates :content, presence: true
    # validates :phone_number, presence: true
    validates :address, presence: true
    validates :category, presence: true
    validates :name, presence: true
    validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

end
