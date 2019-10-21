module Types
  class MessageType < BaseObject
    field :id, ID, null: false
    field :message, String, null: false
    field :posted_by, UserType, null: false, method: :user
  end
end