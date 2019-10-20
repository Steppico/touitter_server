module Types
  class MutationType < BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :sign_in_user, mutation: Mutations::SignInUser
    field :update_username, mutation: Mutations::UpdateUsername
    field :update_password, mutation: Mutations::UpdatePassword
    field :update_bio, mutation: Mutations::UpdateBio
    field :update_confirm_email, mutation: Mutations::UpdateConfirmEmail
  end
end
