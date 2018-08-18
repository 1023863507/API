module Api
    module V1
        class PostsController < ApplicationController        
            def index  # definir un metodo 
                @posts = Post.order('created_at DESC') #declarar variable global
                render json: @posts 
            end        
        end
    end
end