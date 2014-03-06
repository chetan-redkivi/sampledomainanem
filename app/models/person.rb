class Person < ActiveRecord::Base

  PERSON_ID = 'person-id'

  has_one :immunization_status
end
