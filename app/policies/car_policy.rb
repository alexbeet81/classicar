class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # can change this if we want to just show cars of specific logged in users 
      # scope.where(user: user)
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    # if user is owner of the car => true
    # otherwise => false
    # user == current_user
    # record == @retaurant i.e. the argument passed to 'authorize'
    user == record.user
  end

  def destroy?
    user == record.user
  end
end
