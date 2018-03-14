class JobPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def destroy?
    user.role == "Admin" || (user.role == "Recruiter" && @record.user == user)
  end

  def new?
    user.role == "Admin" || user.role == "Recruiter"
  end

  def create?
    user.role == "Admin" || (user.role == "Recruiter" && @record.company == user.company)
  end

  def job_applications?
    user.role == "Admin" || (user.role == "Recruiter" && @record.company == user.company)
  end

  def update?
    user.role == "Admin" || (user.role == "Recruiter" && @record.user == user)
  end

end
