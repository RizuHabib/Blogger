class LikesController < ApplicationController
  before_action :authenticate_user!


  def toggle
        


        
        like =  Like.find_by(post_id: params[:post_id] ,  user_id: current_user.id)
        post =  Post.find_by(id: params[:post_id])
        @post =   post
        if post.user_can_like(current_user.id)
               
           like =  Like.create(post_id: params[:post_id] ,  user_id: current_user.id)
           #UsermailerMailer.liked_email(like.post.user).deliver_now
        else
        
          like.destroy

        end 	


  end




end
