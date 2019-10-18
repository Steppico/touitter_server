module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :user_login, UserType, null: false do
      argument :email, String, required: true
    end

    def user_login(email:)
      User.find_by(email:email)
    end    
  end
end
