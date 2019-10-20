module Mutations
  class UpdateBio < BaseMutation
    
    argument :id, ID, required: true
    argument :bio, String, required: true
    
    field :id, ID, null: true
    field :bio, String, null: true
    
    def resolve(id: nil, bio: nil)
      user = User.find(id)
      user.bio = bio
      user.save
      return user
    end
  end
end
