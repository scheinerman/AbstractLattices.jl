module AbstractLattices

export ∧, ∨, dist, wedge, vee

function wedge end
function vee end

const ∧ = wedge
const ∨ = vee

wedge(x) = x
vee(x) = x

wedge(p::Bool,q::Bool) = p && q
vee(p::Bool,q::Bool) = p || q

function dist end

end
