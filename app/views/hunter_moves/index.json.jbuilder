json.hunter_moves @hunter_moves.each do |move|
    json.id move.id
    json.playbook move.playbook.name if move.playbook.present?
    json.playbook "All" if !move.playbook.present?
    json.name move.name
    json.description move.description
    json.rating move.rating if move.rating.present?
    json.partial_success move.partial_success if move.partial_success.present?
    json.total_success move.total_success if move.total_success.present?
    json.advanced_success move.advanced_success if move.advanced_success.present?
end