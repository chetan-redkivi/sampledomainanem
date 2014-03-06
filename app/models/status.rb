class Status < ActiveRecord::Base
  has_one :immunization_status
end
