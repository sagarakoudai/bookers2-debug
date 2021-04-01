class LikesController < ApplicationController
    
    def create
        @book = Book.find(params[:id])
        @like = Like.new(
            user_id: current_user.id,
            book_id: params[:id]
            )
            
        @like.save
        redirect_to book_path(@book)
    end
    
    def destroy
        @book = Book.find(params[:id])
        @like = Like.find_by(
            user_id: current_user.id,
            book_id: params[:id]
            )
        @like.destroy
        redirect_to book_path(@book)
    end
    
end