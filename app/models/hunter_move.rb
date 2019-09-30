class HunterMove < ApplicationRecord
    belongs_to :playbook, optional: true
end
