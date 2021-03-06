class Like < ApplicationRecord
    belongs_to :book
    belongs_to :user
    
    validates :user_id, presence: true
    validates :book_id, presence: true
    validates_uniqueness_of :book_id, scope: :user_id
end
