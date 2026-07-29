import FanoVarietiesCanonicalLaneLean.FanoAnalyticProof

/-!
# Fano Analytic Evidence Terms
-/

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure AnticanonicalEvidenceTerms {A : AnticanonicalBundlePackage}
    (C : AnticanonicalAnalyticCertificate A) where
  positivityCondition : C.positivityCondition
  globalGeneration : C.globalGeneration
  vanishingAboveDimension : C.vanishingAboveDimension
  anticanonicalClosed : AnticanonicalBundleClosed A

def AnticanonicalAnalyticCertificate.evidenceTerms {A : AnticanonicalBundlePackage}
    (C : AnticanonicalAnalyticCertificate A) : AnticanonicalEvidenceTerms C :=
  {
    positivityCondition := C.positivityConditionClosed
    globalGeneration := C.globalGenerationClosed
    vanishingAboveDimension := C.vanishingAboveDimensionClosed
    anticanonicalClosed := anticanonical_bundle_closed_from_evidence A C.anticanonicalEvidence
  }

structure KodairaEvidenceTerms {A : AnticanonicalBundlePackage}
    {K : KodairaVanishingPackage A} (C : KodairaAnalyticCertificate K) where
  cohomologyVanishing : C.cohomologyVanishing
  vanishingDegreeRange : C.vanishingDegreeRange
  sufficientCondition : C.sufficientCondition
  kodairaClosed : KodairaVanishingClosed K

def KodairaAnalyticCertificate.evidenceTerms {A : AnticanonicalBundlePackage}
    {K : KodairaVanishingPackage A} (C : KodairaAnalyticCertificate K) : KodairaEvidenceTerms C :=
  {
    cohomologyVanishing := C.cohomologyVanishingClosed
    vanishingDegreeRange := C.vanishingDegreeRangeClosed
    sufficientCondition := C.sufficientConditionClosed
    kodairaClosed := kodaira_vanishing_closed_from_evidence K C.kodairaEvidence
  }

structure MoriEvidenceTerms {A : AnticanonicalBundlePackage} {K : KodairaVanishingPackage A}
    {M : MoriProgramPackage A K} (C : MoriAnalyticCertificate M) where
  coneTheorem : C.coneTheorem
  contractionTheorem : C.contractionTheorem
  extremalRayClassification : C.extremalRayClassification
  rayContractionMap : C.rayContractionMap
  moriClosed : MoriProgramClosed M

def MoriAnalyticCertificate.evidenceTerms {A : AnticanonicalBundlePackage} {K : KodairaVanishingPackage A}
    {M : MoriProgramPackage A K} (C : MoriAnalyticCertificate M) : MoriEvidenceTerms C :=
  {
    coneTheorem := C.coneTheoremClosed
    contractionTheorem := C.contractionTheoremClosed
    extremalRayClassification := C.extremalRayClassificationClosed
    rayContractionMap := C.rayContractionMapClosed
    moriClosed := mori_program_closed_from_evidence M C.moriEvidence
  }

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse