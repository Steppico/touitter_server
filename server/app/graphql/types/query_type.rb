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

    field :all_messages, [MessageType], null: false
    def all_messages
      Message.all
    end

    field :all_followers, [FollowType], null: false
    def all_followers
      Follow.all
    end

    field :follower_by_user_id, [FollowType], null:false do
      argument :user_id, ID, required: true
    end
    def follower_by_user_id(user_id:)
      Follow.where(user_id:user_id)
    end

    field :all_user_messages, [MessageType], null: false do
      argument :id, ID, required: true
    end
    def all_user_messages(id: nil)
        Message.where(:user_id => id)
    end
  end
end