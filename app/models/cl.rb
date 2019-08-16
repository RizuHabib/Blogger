class Cl < ApplicationRecord
	belongs_to :user
	belongs_to :post
	belongs_to :comment


  
	def user_can_like_comment(user_id , post_id)

     if self.cls.where(user_id: user_id  ,  post_id: post_id).length >0
     	return false
     else
        return true	
     end

	end




	def like_comment_status_string(user_id  ,  post_id)

      
      if self.user_can_like_comment(user_id ,  post_id)
          return  "like"    
      else
      	  return "unlike"
      end	  

    end


end
