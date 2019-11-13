class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def show
      user_is_owner?

    def create
      user_is_owner?
    end

    def destroy
      user_is_owner?
    end

    private

    def user_is_owner?
      record.user == user
    end
end
