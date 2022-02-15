class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to_database: {
    wiring: :primary,
    reading: :primary_replica
  }
end
