module Types
  class UserType < BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :email, String, null: false
    field :password, String, null: false
    field :email_confirmed, Boolean, null: false
    field :token, String, null: false
    field :bio, String, null: false
  end
end