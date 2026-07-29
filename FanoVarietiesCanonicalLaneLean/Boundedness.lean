import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure BoundednessPackage {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X} where
  familiesBounded : Prop
  moduliSpaceSeparated : Prop
  birationalBoundedness : Prop
  familiesBoundedTerm : familiesBounded
  moduliSpaceSeparatedTerm : moduliSpaceSeparated
  birationalBoundednessTerm : birationalBoundedness

structure BoundednessEvidence {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    (B : BoundednessPackage A) where
  familiesBoundedClosed : B.familiesBounded
  moduliSpaceSeparatedClosed : B.moduliSpaceSeparated
  birationalBoundednessClosed : B.birationalBoundedness

def BoundednessClosed {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    (B : BoundednessPackage A) : Prop :=
  B.familiesBounded ∧ B.moduliSpaceSeparated ∧ B.birationalBoundedness

theorem boundedness_closed_from_evidence
    {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    (B : BoundednessPackage A) (E : BoundednessEvidence B) : BoundednessClosed B := by
  exact And.intro E.familiesBoundedClosed
    (And.intro E.moduliSpaceSeparatedClosed E.birationalBoundednessClosed)

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse