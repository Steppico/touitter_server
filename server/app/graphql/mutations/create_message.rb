module Mutations
  class CreateMessage < BaseMutation
    argument :user_id, ID, required: true
    argument :message, String, required: true

    type Types::MessageType

    def resolve(user_id: nil, message: nil)
      Message.create!(
        user_id: user_id,
        message: message
      )
    end
  end
end