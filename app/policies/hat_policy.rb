class HatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

  def index?
    true
  end

  def show?
    record.user == user || record.public_visibility == true
  end

  def create?
    ture
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  end
end
