class Severity < ActiveRecord::Base
  has_one :immunization_status
end
