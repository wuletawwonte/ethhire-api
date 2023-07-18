class Job < ApplicationRecord
  enum type: [:full_time, :part_time, :contract, :temporary, :internship, :volunteer, :other]
end
