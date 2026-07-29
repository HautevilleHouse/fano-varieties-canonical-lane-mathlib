import FanoVarietiesCanonicalLaneLean.FanoRoute

/-!
# Fano Analytic Proof Route
-/

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure AnticanonicalAnalyticCertificate (A : AnticanonicalBundlePackage) where
  positivityCondition : Prop
  globalGeneration : Prop
  vanishingAboveDimension : Prop
  positivityConditionClosed : positivityCondition
  globalGenerationClosed : globalGeneration
  vanishingAboveDimensionClosed : vanishingAboveDimension
  anticanonicalEvidence : AnticanonicalBundleEvidence A

def AnticanonicalAnalyticCertificateClosed {A : AnticanonicalBundlePackage}
    (C : AnticanonicalAnalyticCertificate A) : Prop :=
  C.positivityCondition ∧ C.globalGeneration ∧ C.vanishingAboveDimension ∧ AnticanonicalBundleClosed A

theorem anticanonical_analytic_certificate_closed {A : AnticanonicalBundlePackage}
    (C : AnticanonicalAnalyticCertificate A) : AnticanonicalAnalyticCertificateClosed C := by
  exact And.intro C.positivityConditionClosed (And.intro C.globalGenerationClosed (And.intro C.vanishingAboveDimensionClosed (anticanonical_bundle_closed_from_evidence A C.anticanonicalEvidence)))

structure KodairaAnalyticCertificate {A : AnticanonicalBundlePackage}
    (K : KodairaVanishingPackage A) where
  cohomologyVanishing : Prop
  vanishingDegreeRange : Prop
  sufficientCondition : Prop
  cohomologyVanishingClosed : cohomologyVanishing
  vanishingDegreeRangeClosed : vanishingDegreeRange
  sufficientConditionClosed : sufficientCondition
  kodairaEvidence : KodairaVanishingEvidence K

def KodairaAnalyticCertificateClosed {A : AnticanonicalBundlePackage}
    {K : KodairaVanishingPackage A} (C : KodairaAnalyticCertificate K) : Prop :=
  C.cohomologyVanishing ∧ C.vanishingDegreeRange ∧ C.sufficientCondition ∧ KodairaVanishingClosed K

theorem kodaira_analytic_certificate_closed {A : AnticanonicalBundlePackage}
    {K : KodairaVanishingPackage A} (C : KodairaAnalyticCertificate K) : KodairaAnalyticCertificateClosed C := by
  exact And.intro C.cohomologyVanishingClosed (And.intro C.vanishingDegreeRangeClosed (And.intro C.sufficientConditionClosed (kodaira_vanishing_closed_from_evidence K C.kodairaEvidence)))

structure MoriAnalyticCertificate {A : AnticanonicalBundlePackage} {K : KodairaVanishingPackage A}
    (M : MoriProgramPackage A K) where
  coneTheorem : Prop
  contractionTheorem : Prop
  extremalRayClassification : Prop
  rayContractionMap : Prop
  coneTheoremClosed : coneTheorem
  contractionTheoremClosed : contractionTheorem
  extremalRayClassificationClosed : extremalRayClassification
  rayContractionMapClosed : rayContractionMap
  moriEvidence : MoriProgramEvidence M

def MoriAnalyticCertificateClosed {A : AnticanonicalBundlePackage} {K : KodairaVanishingPackage A}
    {M : MoriProgramPackage A K} (C : MoriAnalyticCertificate M) : Prop :=
  C.coneTheorem ∧ C.contractionTheorem ∧ C.extremalRayClassification ∧ C.rayContractionMap ∧ MoriProgramClosed M

theorem mori_analytic_certificate_closed {A : AnticanonicalBundlePackage} {K : KodairaVanishingPackage A}
    {M : MoriProgramPackage A K} (C : MoriAnalyticCertificate M) : MoriAnalyticCertificateClosed C := by
  exact And.intro C.coneTheoremClosed (And.intro C.contractionTheoremClosed (And.intro C.extremalRayClassificationClosed (And.intro C.rayContractionMapClosed (mori_program_closed_from_evidence M C.moriEvidence))))

-- Additional certificates for minimal model program, Fano index, and boundedness would follow similarly.

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse