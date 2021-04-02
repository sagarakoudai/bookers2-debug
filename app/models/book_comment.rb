class BookComment < ApplicationRecord
    belongs_to :user
    belongs_to :book
    
    validates :user_id, presence: true
    validates :book_id, presence: true
    # validates :bo, presence: true
end