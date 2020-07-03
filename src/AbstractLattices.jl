module AbstractLattices

export ∧, ∨, dist, wedge, vee

function wedge end
function vee end

const ∧ = wedge
const ∨ = vee

function dist end

wedge() = 1

end
