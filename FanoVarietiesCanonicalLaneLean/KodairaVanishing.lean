import FanoVarietiesCanonicalLaneLean.AnticanonicalBundle

/-!
# Kodaira Vanishing Package
-/

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure KodairaVanishingPackage {A : AnticanonicalBundlePackage} where
  cohomologyVanishing : Prop
  vanishingDegreeRange : Prop
  sufficientCondition : Prop

structure KodairaVanishingEvidence {A : AnticanonicalBundlePackage} (K : KodairaVanishingPackage A) where
  cohomologyVanishingClosed : K.cohomologyVanishing
  vanishingDegreeRangeClosed : K.vanishingDegreeRange
  sufficientConditionClosed : K.sufficientCondition

def KodairaVanishingClosed {A : AnticanonicalBundlePackage} (K : KodairaVanishingPackage A) : Prop :=
  K.cohomologyVanishing ∧ K.vanishingDegreeRange ∧ K.sufficientCondition

theorem kodaira_vanishing_closed_from_evidence {A : AnticanonicalBundlePackage}
    (K : KodairaVanishingPackage A) (E : KodairaVanishingEvidence K) : KodairaVanishingClosed K := by
  exact And.intro E.cohomologyVanishingClosed (And.intro E.vanishingDegreeRangeClosed E.sufficientConditionClosed)

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse