class CommentsController < ApplicationController
def comment_params
      params.require(:comment).permit(:body)
end

  def create
    @note = Note.find(params[:note_id])
    @comment = @note.comments.create(comment_params)
    redirect_to note_path(@note)
  end
    
end
