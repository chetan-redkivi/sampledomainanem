class CreateImmunizationStatuses < ActiveRecord::Migration
  def change
    create_table :immunization_statuses do |t|
      t.integer :person_id
      t.integer :severity_id
      t.integer :status_id

      t.timestamps
    end
  end
end
