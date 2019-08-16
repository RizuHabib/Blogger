class ClController < ApplicationController

  def toggle
   
    comment =  Comment.find_by(id: params[:comment_id])
    cl = Cl.find_by(comment_id: params[:comment_id] , user_id: current_user.id ,  post_id: comment.post_id)

    if(comment.user_can_like_comment(current_user.id  ,   comment.post_id) )
    	cl = Cl.create(comment_id: params[:comment_id] , user_id: current_user.id ,  post_id: comment.post_id)
        UsermailerMailer.likecomment_email(cl.comment.post.user).deliver_now
    else
       cl.destroy
    end  

   redirect_to :root
 end




end
