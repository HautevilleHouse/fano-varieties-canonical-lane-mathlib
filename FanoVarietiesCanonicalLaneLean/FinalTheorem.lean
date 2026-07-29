import FanoVarietiesCanonicalLaneLean.BridgeLemmas
import FanoVarietiesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

def ConstrainedFanoClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fano_endgame (A : AdmissibleClass) :
    ConstrainedFanoClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse