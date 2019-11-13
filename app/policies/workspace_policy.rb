class WorkspacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      #anyone can view any workspace
      scope.all

      #display only workspaces of owner
      #scope.where(user: user)
    end
  end

  # def new?
  #   return true
  # end remove the new becuase it inherits from create

  # def create?
  #   return true #anyone can create a workspace
  # end

  # def edit?
  #   record.user == user #condition already a boolean
  # end it inherits from update

  # def update?
  #   record.user == user
  # end
end
