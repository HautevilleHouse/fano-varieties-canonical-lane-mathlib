import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure MoriProgramPackage {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    {B : BirationalGeometryPackage A} {M : MinimalModelPackage B} where
  coneOfCurves : Prop
  contractionTheorem : Prop
  flipExistence : Prop
  coneOfCurvesTerm : coneOfCurves
  contractionTheoremTerm : contractionTheorem
  flipExistenceTerm : flipExistence

structure MoriProgramEvidence {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    {B : BirationalGeometryPackage A} {M : MinimalModelPackage B}
    (P : MoriProgramPackage M) where
  coneOfCurvesClosed : P.coneOfCurves
  contractionTheoremClosed : P.contractionTheorem
  flipExistenceClosed : P.flipExistence

def MoriProgramClosed {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    {B : BirationalGeometryPackage A} {M : MinimalModelPackage B}
    (P : MoriProgramPackage M) : Prop :=
  P.coneOfCurves ∧ P.contractionTheorem ∧ P.flipExistence

theorem mori_program_closed_from_evidence
    {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    {B : BirationalGeometryPackage A} {M : MinimalModelPackage B}
    (P : MoriProgramPackage M) (E : MoriProgramEvidence P) : MoriProgramClosed P := by
  exact And.intro E.coneOfCurvesClosed
    (And.intro E.contractionTheoremClosed E.flipExistenceClosed)

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse