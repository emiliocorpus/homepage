Rails.application.routes.draw do
  root 'hello_world#index'


  resources :articles do 
     resources :comments #-> url.com/articles/:article_id/comments/:id
     end
  end

end
