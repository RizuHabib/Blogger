class PostsController < ApplicationController
	before_action :authenticate_user!,  only: [:create , :destroy]

  def home
  	@post = Post.new
  	@posts =  Post.all
  	@comment =  Comment.new

  end



  def create
    
    post =  Post.create(content: params[:post][:content] , user_id: current_user.id ,  avatar: params[:post][:avatar]);
    @new =  post
    @comment =  Comment.new

  end





  def destroy
  	post =  Post.find(params[:id]);
    @post_id =  post.id
  	if(post.user_id ==  current_user.id)
  		  post.destroy
  	end	
  	
  end




end