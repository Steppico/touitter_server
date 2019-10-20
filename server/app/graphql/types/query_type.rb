module Types
  class QueryType < Types::BaseObject

    field :user_login, UserType, null: false do
      argument :email, String, required: true
    end

    def user_login(email:)
      User.find_by(email:email)
    end

    field :check_token, UserType, null: false do
      argument :token, String, required: true
    end  
    
    def check_token(token:)
      return User.find_by(token:token)
    end
  end
end
