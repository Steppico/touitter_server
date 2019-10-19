module Mutations
  class UpdatePassword < BaseMutation
    
    argument :id, ID, required: true
    argument :password, String, required: true
    
    field :id, ID, null: true
    field :password, String, null: true
    
    def resolve(id: nil, password: nil)
      user = User.find(id)
      user.password = password
      user.save
      return user
    end
  end
end
