module Mutations
  class CreateUser < BaseMutation

    class AuthProviderSignupData < Types::BaseInputObject
      argument :email, Types::AuthProviderEmailInput, required: false
    end

    argument :username, String, required: true
    argument :auth_provider, AuthProviderSignupData, required: false

    type Types::UserType
    
    new_user = def resolve(username: nil, auth_provider: nil)
      user = User.create!(
        username: username,
        email: auth_provider&.[](:email)&.[](:email),
        password: auth_provider&.[](:email)&.[](:password),
        email_confirmed: false,
        bio: "Write something about you"
      )

      token = JWT.encode({user_id: user.id}, "session_test", "HS256")
      
      user.token = token
      user.save

      UserMailer.with(user: user).welcome_email.deliver_now

      return user
    end
  end
end
