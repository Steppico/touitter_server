module Mutations
  class UpdateUsername < BaseMutation
    
    argument :id, ID, required: true
    argument :username, String, required: true
    
    field :id, ID, null: true
    field :username, String, null: true
    
    def resolve(id: nil, username: nil)
      user = User.find(id)
      user.username = username
      user.save
      return user
    end
  end
end
