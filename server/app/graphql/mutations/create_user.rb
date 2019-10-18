module Mutations
  class CreateUser < BaseMutation


    class AuthProviderSignupData < Types::BaseInputObject
      argument :email, Types::AuthProviderEmailInput, required: false
    end

    argument :username, String, required: true
    argument :auth_provider, AuthProviderSignupData, required: false
    argument :email_confirmed, Boolean, required: false

    type Types::UserType

    def resolve(username: nil, auth_provider: nil, email_confirmed: false)
        User.create!(
          username: username,
          email: auth_provider&.[](:email)&.[](:email),
          password: auth_provider&.[](:email)&.[](:password),
          email_confirmed: email_confirmed
        )
    end
  end
end
