class CommentEmailSending
	
	
	@queue= :emails

	def self.perform(comment_id)
		
		puts('sending comment_email')
		comment =  Comment.find(comment_id)
		user =  comment.post.user
		UserMailer.commented_email(user).deliver_now
		
	end





end