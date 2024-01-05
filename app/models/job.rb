class Job < ApplicationRecord
  enum job_type: {
    full_time: 'Full time',
    part_time: 'Part time',
    contract: 'Contract',
    temporary: 'Temporary',
    internship: 'Internship',
    volunteer: 'Volunteer',
    other: 'Other'
  }

  belongs_to :category
end
