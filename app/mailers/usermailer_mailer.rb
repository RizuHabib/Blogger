class UsermailerMailer < ApplicationMailer


   default from: 'harshitarora199@gmail.com'
   
   def commented_email(user)
      @user = user
      @url  = 'http://www.gmail.com'
      mail(to: @user.email, subject: 'Someone Commented on your post')
      
   end




  def liked_email(user)

      @user = user
      @url  = 'http://www.gmail.com'
      mail(to: @user.email, subject: 'Someone Liked  your post')
  end	


  def likecomment_email(user)

      @user = user
      @url  = 'http://www.gmail.com'
      mail(to: @user.email, subject: 'Someone Liked  your comment')
  end	



end
