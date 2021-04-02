class BookCommentsController < ApplicationController
    
    def create
        @comment = BookComment.
        @comment.user_id = current_user.id
        @comment.book_id = params[:book_id]
        # if 
        @comment.save
        redirect_back(fallback_location: root_path)
        # else redirect_to books_path
        # end
        
    end
    
    def destroy
        @comment = BookComment.find_by(user_id: current_user.id, book_id: params[:id])
        @comment.destroy
        redirect_back(fallback_location: root_path)
    end
    
end
