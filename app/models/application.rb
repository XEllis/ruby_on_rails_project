class Application < ApplicationRecord
  belongs_to :job
  belongs_to :user
  has_one :status, dependent: :delete

  validates :current_company, presence: true
  validates :linkedIn_URL, format: {with: /\A#{URI::regexp}\z/, message: "the URL is NOT valid"}, presence: true
  validates :portfolio_URL, format: {with: /\A#{URI::regexp}\z/, message: "the URL is NOT valid"}, presence: true
  validates_inclusion_of :gender, in: %w(Female Male Others Private), presence: true
  validates :race, presence: true
  validates_inclusion_of :veteran_status, in: %w(No Yes Private), presence: true
  validates_inclusion_of :disability_status, in: %w(No Yes Private), presence: true
  validates :job_id, presence: true

  mount_uploader :resume, ResumeUploader
  mount_uploader :cover, CoverUploader
  mount_uploader :other, OtherUploader


  def self.policy_class
    ApplyPolicy
  end

end
