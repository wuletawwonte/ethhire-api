# == Schema Information
#
# Table name: jobs
#
#  id          :bigint           not null, primary key
#  description :text
#  job_type    :string
#  location    :string
#  salary      :decimal(, )
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_jobs_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
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
