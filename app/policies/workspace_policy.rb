class WorkspacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # anyone can view any workspace
      scope.all
    end
  end

  def index?
    return true
  end

  def new?
    return true
  end

  # anyone can view workspaces
  def show?
    return true
  end

  # anyone can create a workspace
  def create?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
