class Company < ApplicationRecord
  has_many :jobs, dependent: :destroy
  has_many :users, dependent: :destroy
  # has_many :applications

  validates :name, presence: true, uniqueness: true
  validates :website, format: {with: /\A#{URI::regexp}\z/, message: "the URL is NOT valid"}, presence: true
  validates :headquarter, presence: true
  validates_inclusion_of :size, in: %w(1-50 51-200 201-500 501-1000 1000+), presence: true
  validates :founded, presence: true, format: {with: /\A\d+\z/, message: "must be a year!"}
  validates_inclusion_of :industry, in: %w(Aerospace Agriculture Chemical Computer Construction Defense Education Energy Entertainment Financial Food Healthcare Hospitality Information Manufacturing Media Mining Telecommunications Transport Water Others), presence: true
  validates :revenue, presence: true
  validates :synopsis, presence: true
end
