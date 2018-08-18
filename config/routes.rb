Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   namespace 'api' do
    namespace 'v1' do
     resources :posts
     resources :users    # el modelo se crea en singular y la primera en mayúscula  y el controlador en plural e inicia en minúscula 
    end
  end
end
