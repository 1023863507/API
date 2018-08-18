class PostSerializer < ActiveModel::Serializer   # convirtiendo nuestro archivo en formato json
    attributes :id, :body
    belongs_to :user
 

    class UserSerializer < ActiveModel::Serializer   # convirtiendo nuestro archivo en formato json
        attributes :name, :token 
    
    end

end