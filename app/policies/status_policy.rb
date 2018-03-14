class StatusPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    false
  end

  def update?
    user.role == "Admin" || (user.role == "Recruiter" && @record.application.job.company == user.company)
  end

  def show?
    user.role == "Admin" || (user.role == "Recruiter" && @record.application.job.company == user.company)
  end

  def destroy?
    false
  end

  def create?
    user.role == "Admin" || user.role == "Job Seeker"
  end
end
