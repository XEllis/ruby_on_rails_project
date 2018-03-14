class ApplyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def destroy?
    user.role == "Admin" || (user.role == "Job Seeker" && @record.user == user)
  end

  def create?
    user.role == "Admin" || user.role == "Job Seeker"
  end

  def update?
    user.role == "Admin" || (user.role == "Job Seeker" && @record.user == user)
  end

  def index?
    user.role == "Admin"
  end

  def show?
    user.role == "Admin" || (user.role == "Job Seeker" && @record.user == user) || (user.role == "Recruiter" && @record.job.company == user.company)
  end

end
