class PersonIdentifier < ActiveRecord::Base
    belongs_to :person
    belongs_to :identifier
end
