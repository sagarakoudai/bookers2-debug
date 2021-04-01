class LikesController < ApplicationController
    
   def create
        @book = Book.find(params[:id])
        @like = Like.new(
            user_id: current_user.id,
            book_id: params[:id]
            )
            
        @like.save
        redirect_back(fallback_location: root_path)
   end
    
   def destroy
        @book = Book.find(params[:id])
        @like = Like.find_by(
            user_id: current_user.id,
            book_id: params[:id]
            )
        @like.destroy
        redirect_back(fallback_location: root_path)
   end

    
end