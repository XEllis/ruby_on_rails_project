class Status < ApplicationRecord
  belongs_to :application
  validates_inclusion_of :submission_status, in: %w(Hired In_Process Not_Seleceted Received Submitted), presence: true
end
