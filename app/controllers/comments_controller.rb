class CommentsController < ApplicationController
  before_action :authenticate_user!,  only: [:create , :destroy]
  




  def create
     @Newcomment = Comment.create(content: params[:comment][:content] ,  user_id: current_user.id ,  post_id: params[:comment][:post_id])
    #!COMMENTING THIS USER MAILER VALA LINE
    # UsermailerMailer.commented_email(@comment.post.user).deliver_now
   # Resque.enqueue(CommentEmailSending , @comment.id) 
     #CommentEmailSendingWorker is being created  a WORKER IS CREATED
     

  end






  def destroy
     comment =  Comment.find(params[:id])
     @comment_id  =  comment.id
     if(comment.user_id ==  current_user.id)
     	 comment.destroy
     end
  end




end
