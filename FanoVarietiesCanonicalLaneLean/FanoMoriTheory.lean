import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure FanoMoriTheoryPackage where
  rationalCurvesCovered : Prop
  extremalRaysClassified : Prop
  coneTheoremApplied : Prop
  contractionMapsConstructed : Prop

structure FanoMoriTheoryEvidence (F : FanoMoriTheoryPackage) where
  rationalCurvesCoveredClosed : F.rationalCurvesCovered
  extremalRaysClassifiedClosed : F.extremalRaysClassified
  coneTheoremAppliedClosed : F.coneTheoremApplied
  contractionMapsConstructedClosed : F.contractionMapsConstructed

def FanoMoriTheoryClosed (F : FanoMoriTheoryPackage) : Prop :=
  F.rationalCurvesCovered ∧ F.extremalRaysClassified ∧ F.coneTheoremApplied ∧ F.contractionMapsConstructed

theorem fano_mori_theory_closed_from_evidence (F : FanoMoriTheoryPackage) (E : FanoMoriTheoryEvidence F) :
    FanoMoriTheoryClosed F := by
  exact And.intro E.rationalCurvesCoveredClosed
    (And.intro E.extremalRaysClassifiedClosed
      (And.intro E.coneTheoremAppliedClosed E.contractionMapsConstructedClosed))

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse