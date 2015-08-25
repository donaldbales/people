class Identifier < ActiveRecord::Base
    belongs_to :identifier_type
    has_many :person_identifier
end
