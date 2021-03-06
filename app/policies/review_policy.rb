class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def destroy?
    # this works
    record.user == user
  end

  def update?
    record.user == user
  end
end
