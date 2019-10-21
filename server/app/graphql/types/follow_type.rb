module Types
  class FollowType < BaseObject
    field :id, ID, null: false
    field :user_id, UserType, null: false, method: :user
    field :follower_id, Integer, null: false
  end
end