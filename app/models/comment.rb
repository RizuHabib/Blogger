class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :post
  has_many :cls  , dependent: :destroy 


  def user_can_like_comment(user_id  , post_id)

     if self.cls.where(user_id: user_id , post_id: post_id).length >0
     	return false
     else
        return true	
     end

	end 





    def like_comment_status_string(user_id , post_id)

      
      if self.user_can_like_comment(user_id ,  post_id)
            return '<i class="fa fa-thumbs-up"></i>'.html_safe
      else
      	  return '<i class="fa fa-thumbs-down"></i>'.html_safe
      end	  

    end		





end
