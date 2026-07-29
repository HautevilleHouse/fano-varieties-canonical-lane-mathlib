import FanoVarietiesCanonicalLaneLean.FanoVarietiesAdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure KStabilityPackage where
  testConfigurationDefined : Prop
  DonaldsonFutakiInvariant : Prop
  optimalDestabilizing : Prop
  uniformlyStable : Prop

structure KStabilityEvidence (K : KStabilityPackage) where
  testConfigurationDefinedClosed : K.testConfigurationDefined
  DonaldsonFutakiInvariantClosed : K.DonaldsonFutakiInvariant
  optimalDestabilizingClosed : K.optimalDestabilizing
  uniformlyStableClosed : K.uniformlyStable

def KStabilityClosed (K : KStabilityPackage) : Prop :=
  K.testConfigurationDefined ∧ K.DonaldsonFutakiInvariant ∧ K.optimalDestabilizing ∧ K.uniformlyStable

theorem k_stability_closed_from_evidence (K : KStabilityPackage) (E : KStabilityEvidence K) :
    KStabilityClosed K := by
  exact And.intro E.testConfigurationDefinedClosed
    (And.intro E.DonaldsonFutakiInvariantClosed
      (And.intro E.optimalDestabilizingClosed E.uniformlyStableClosed))

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse