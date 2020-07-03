module AbstractLattices

export ∧, ∨, dist, wedge, vee

function wedge end
function vee end

const ∧ = wedge
const ∨ = vee

wedge(x) = x
vee(x) = x

function dist end

end
