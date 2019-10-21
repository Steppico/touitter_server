module Mutations
  class CreateFollower < BaseMutation
    argument :user_id, ID, required: true
    argument :follower_id, Integer, required: true

    type Types::FollowType

    def resolve(user_id: nil, follower_id: nil)
      Follow.create!({
        user_id: user_id,
        follower_id: follower_id
        })
    end
  end
end