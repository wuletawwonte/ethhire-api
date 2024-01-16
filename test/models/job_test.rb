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
require "test_helper"

class JobTest < ActiveSupport::TestCase
  test "should not save job without title" do
    job = Job.new
    assert_not job.save
  end

  test "should not save job without description" do
    job = Job.new
    assert_not job.save
  end
end
