Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # git password is javidjan
 resources :blogs
 root 'blogs#home'
 get 'blog/about', to: "blogs#about"




end
