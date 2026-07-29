import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure BoundednessPackage where
  dim : Nat
  fanoVarietyFamily : Type u
  boundedRatio : Prop
  volumeBounded : Prop
  birationalBoundedness : Prop

structure BoundednessEvidence (B : BoundednessPackage) where
  boundedRatioClosed : B.boundedRatio
  volumeBoundedClosed : B.volumeBounded
  birationalBoundednessClosed : B.birationalBoundedness

def BoundednessClosed (B : BoundednessPackage) : Prop :=
  B.boundedRatio ∧ B.volumeBounded ∧ B.birationalBoundedness

theorem boundedness_closed_from_evidence
    (B : BoundednessPackage) (E : BoundednessEvidence B) :
    BoundednessClosed B := by
  exact And.intro E.boundedRatioClosed
    (And.intro E.volumeBoundedClosed E.birationalBoundednessClosed)

end HautevilleHouse
end FanoVarietiesCanonicalLaneLean
