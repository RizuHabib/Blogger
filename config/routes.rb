   require 'resque/server'

Rails.application.routes.draw do

   mount Resque::Server.new, at: "/resque"

   get 'users/profile_page/:id'  ,  to: 'users#profile_page' ,  as: :user_profile



   post 'users/upload_avatar/:id', to: 'users#upload_avatar', as: :user_avatar_upload

   post 'cl/toggle/:comment_id' ,  to: 'cl#toggle' ,  as: :toggle_like_comment

  # post 'likecomments/toggle/:comment_id' , to: 'likecomments#toggle' ,  as: :toggle_like_comment

  post 'likes/toggle/:post_id' ,  to: 'likes#toggle' ,  as: :toggle_like

  root  'posts#home'

  post 'posts/create' ,  as: :posts

  #I made some changes here initially it was get posts/destroy ,  but I changed it here.
  delete  'posts/:id'  ,  to: 'posts#destroy'  ,  as: :destroy_post
  #posts #destroy means ki posts controller ka function haii destroy



  post 'comments/create' ,  as: :comments
  
  delete  'comments/:id'  ,  to: 'comments#destroy'  ,  as: :destroy_comment


 devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
