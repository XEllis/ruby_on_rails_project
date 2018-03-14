class Job < ApplicationRecord
  has_many :applications, dependent: :delete_all
  belongs_to :company
  belongs_to :user

  validates :description, presence: true
  validates_inclusion_of :employment_type, in: %w(Contractor Co-op Full-time Internship Part-time Others), presence: true
  validates :responsibilities, presence: true
  validates :requirements, presence: true
  validates :company_id, presence:true

end
