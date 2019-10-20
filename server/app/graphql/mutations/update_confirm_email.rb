module Mutations
  class UpdateConfirmEmail < BaseMutation
    
    argument :id, ID, required: true
    
    field :id, ID, null: true
    field :email_confirmed, Boolean, null: true

    def resolve(id: nil)
      user = User.find(id)
      user.email_confirmed = true
      user.save
      return user
    end
  end
end
