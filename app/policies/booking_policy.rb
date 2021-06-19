class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    # should the renter and car owner be able to edit?
    record.user == user
  end

  def destroy?
    # should the renter and car owner be able to destroy?
    record.user == user
  end
end
