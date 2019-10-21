module Mutations
  class DeleteFollower < BaseMutation
    argument :user_id, ID, required: true
    argument :follower_id, Integer, required: true

    type Types::FollowType

    def resolve(user_id: nil, follower_id: nil)
      follower = Follow.find_by(user_id:user_id).destroy
    end
  end
end