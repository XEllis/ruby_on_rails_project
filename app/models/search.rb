class Search < ApplicationRecord
  def search_companies
    companies = Company.all
    companies = companies.where(["name ILIKE ?", "%#{name}%"]) if name.present?
    companies = companies.where(["industry ILIKE ?", "%#{industry}%"]) if industry.present?
    companies = companies.where(["headquarter ILIKE ?", "%#{headquarter}%"]) if headquarter.present?
    companies = companies.where(["size ILIKE ?", "%#{size}%"]) if size.present?
    companies = companies.where(["synopsis ILIKE ?", "%#{synopsis}%"]) if synopsis.present?
    companies = companies.where(["revenue >= ?", "%#{min_revenue}%"]) if min_revenue.present?
    companies = companies.where(["revenue <= ?", "%#{max_revenue}%"]) if max_revenue.present?
    return companies
  end
end
