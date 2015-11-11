class PostPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def index?
      true
    end
    
    def initialize(user, scope)
      @user = user
      @scope = scope
    end
  
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(:published => true)
      end
    end
  end
  
  def update?
    user.admin? or not post.published?
  end
end