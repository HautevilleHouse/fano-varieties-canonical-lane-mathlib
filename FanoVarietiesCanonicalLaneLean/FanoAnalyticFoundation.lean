import FanoVarietiesCanonicalLaneLean.Boundedness

/-!
# Fano Analytic Foundation
This module assembles the Fano route as a chain of closed evidence packages.
-/

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure FanoAnalyticFoundation where
  anticanonical : AnticanonicalBundlePackage
  anticanonicalEvidence : AnticanonicalBundleEvidence anticanonical
  kodaira : KodairaVanishingPackage anticanonical
  kodairaEvidence : KodairaVanishingEvidence kodaira
  mori : MoriProgramPackage anticanonical kodaira
  moriEvidence : MoriProgramEvidence mori
  mmProgram : MinimalModelProgramPackage anticanonical kodaira mori
  mmProgramEvidence : MinimalModelProgramEvidence mmProgram
  fanoIndex : FanoIndexPackage anticanonical anticanonical.variety
  fanoIndexEvidence : FanoIndexEvidence fanoIndex
  boundedness : BoundednessPackage anticanonical anticanonical.variety fanoIndex
  boundednessEvidence : BoundednessEvidence boundedness

def FanoAnalyticFoundationClosed (A : FanoAnalyticFoundation) : Prop :=
  AnticanonicalBundleClosed A.anticanonical ∧
  KodairaVanishingClosed A.kodaira ∧
  MoriProgramClosed A.mori ∧
  MinimalModelProgramClosed A.mmProgram ∧
  FanoIndexClosed A.fanoIndex ∧
  BoundednessClosed A.boundedness

theorem fano_analytic_foundation_closed_from_evidence (A : FanoAnalyticFoundation) :
    FanoAnalyticFoundationClosed A := by
  exact And.intro (anticanonical_bundle_closed_from_evidence A.anticanonical A.anticanonicalEvidence)
    (And.intro (kodaira_vanishing_closed_from_evidence A.kodaira A.kodairaEvidence)
      (And.intro (mori_program_closed_from_evidence A.mori A.moriEvidence)
        (And.intro (minimal_model_program_closed_from_evidence A.mmProgram A.mmProgramEvidence)
          (And.intro (fano_index_closed_from_evidence A.fanoIndex A.fanoIndexEvidence)
            (boundedness_closed_from_evidence A.boundedness A.boundednessEvidence)))))

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse