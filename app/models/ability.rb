class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new 
        
       if user.role == 'Admin'
        can :manage, :all
        can :update, :Role
        can :update,Advertisement
        can :create, User

       elsif user.role == 'Author'
        can :read,:all
        can :update,:all
        can :create,Advertisement 
       else
       can :read,:all
       can :create, Comment
       can :read ,Advertisement  
       end
   end
    
     
end
