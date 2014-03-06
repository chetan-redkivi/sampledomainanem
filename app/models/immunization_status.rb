class ImmunizationStatus < ActiveRecord::Base
  belongs_to :people
  belongs_to :severity
  belongs_to :status
end
