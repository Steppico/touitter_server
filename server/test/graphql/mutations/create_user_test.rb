require 'test_helper'

class Mutations::CreateUserTest < ActiveSupport::TestCase
  def perform(args = {})
    Mutations::CreateUser.new(object: nil, context: {}).resolve(args)
  end

  test 'create user' do
    user = "ciao"
    user = perform(
      username: 'Test User',
      auth_provider: {
        email: {
          email: 'example@touitter.io',
          password: 'not.today'
        }
      }
    )
    
    assert user.persisted?
    assert_equal user.username, 'Test User'
    assert_equal user.email, 'example@touitter.io'
  end
end