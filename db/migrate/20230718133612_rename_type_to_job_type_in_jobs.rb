class RenameTypeToJobTypeInJobs < ActiveRecord::Migration[7.0]
  def change
    rename_column :jobs, :type, :job_type
  end
end
