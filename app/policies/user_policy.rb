class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    user.role == "Admin"
  end

  def new?
    user.role == "Admin"
  end

  def create?
    user.role == "Admin"
  end

  def edit?
    user.role == "Admin" || @record == user
  end

  def update?
    user.role == "Admin" || @record == user
  end

  def show?
    user.role == "Admin" || @record == user
  end

  def destroy?
    user.role == "Admin" || @record == user
  end

  def job_seeker_applications?
    user.role == "Admin" || (user.role == "Job Seeker" && @record == user)
  end
end
