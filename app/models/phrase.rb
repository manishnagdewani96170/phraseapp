class Phrase < ApplicationRecord
  
  scope :reset_all, -> { update(state: nil, sequence: 0)}
   
end
