class CompanyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def destroy?
    user.role == "Admin"
  end

  def create?
    user.role == "Admin" || user.role == "Recruiter"
  end

  def update?
    user.role == "Admin" || (user.role == "Recruiter" && @record == user.company)
  end

end
