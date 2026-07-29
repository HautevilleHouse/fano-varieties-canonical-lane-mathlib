import FanoVarietiesCanonicalLaneLean.FinalTheorem
import FanoVarietiesCanonicalLaneLean.FanoAnalyticFoundation

/-!
# Fano Route Layer
-/

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure FanoRouteObligations where
  anticanonicalBundle : Prop
  kodairaVanishing : Prop
  moriProgram : Prop
  minimalModelProgram : Prop
  fanoIndex : Prop
  boundedness : Prop

structure FanoRouteEvidence (R : FanoRouteObligations) where
  anticanonicalBundleClosed : R.anticanonicalBundle
  kodairaVanishingClosed : R.kodairaVanishing
  moriProgramClosed : R.moriProgram
  minimalModelProgramClosed : R.minimalModelProgram
  fanoIndexClosed : R.fanoIndex
  boundednessClosed : R.boundedness

def FanoRouteClosed (R : FanoRouteObligations) : Prop :=
  R.anticanonicalBundle ∧ R.kodairaVanishing ∧ R.moriProgram ∧
  R.minimalModelProgram ∧ R.fanoIndex ∧ R.boundedness

theorem fano_route_closed_from_evidence (R : FanoRouteObligations) (E : FanoRouteEvidence R) :
    FanoRouteClosed R := by
  exact And.intro E.anticanonicalBundleClosed
    (And.intro E.kodairaVanishingClosed
      (And.intro E.moriProgramClosed
        (And.intro E.minimalModelProgramClosed
          (And.intro E.fanoIndexClosed E.boundednessClosed))))

structure FanoCanonicalLaneRoute (A : AdmissibleClass) where
  obligations : FanoRouteObligations
  evidence : FanoRouteEvidence obligations
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem fano_route_yields_constrained_fano_closure (A : AdmissibleClass)
    (R : FanoCanonicalLaneRoute A) : ConstrainedFanoClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse