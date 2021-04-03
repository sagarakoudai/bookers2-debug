class BookCommentsController < ApplicationController
    
    def create
        @comment = BookComment.new(user_id: current_user.id, book_id: params[:book_id]),(comment_params)  
        @comment.save
         redirect_back(fallback_location: root_path)
    end
    
    def destroy
        @comment = BookComment.find_by(params[:id])
        @comment.destroy
        redirect_back(fallback_location: root_path)
    end
    
    private
    def comment_params
        params.require(:comment).permit(:user_id, :book_id, :bo)
    end
    
end
