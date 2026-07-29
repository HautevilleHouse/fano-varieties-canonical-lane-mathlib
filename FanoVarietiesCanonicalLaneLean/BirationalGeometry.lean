import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure BirationalGeometryPackage {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X} where
  terminalSingularities : Prop
  kltCondition : Prop
  minimalModelProgram : Prop
  terminalSingularitiesTerm : terminalSingularities
  kltConditionTerm : kltCondition
  minimalModelProgramTerm : minimalModelProgram

structure BirationalGeometryEvidence {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    (B : BirationalGeometryPackage A) where
  terminalSingularitiesClosed : B.terminalSingularities
  kltConditionClosed : B.kltCondition
  minimalModelProgramClosed : B.minimalModelProgram

def BirationalGeometryClosed {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    (B : BirationalGeometryPackage A) : Prop :=
  B.terminalSingularities ∧ B.kltCondition ∧ B.minimalModelProgram

theorem birational_geometry_closed_from_evidence
    {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    (B : BirationalGeometryPackage A) (E : BirationalGeometryEvidence B) : BirationalGeometryClosed B := by
  exact And.intro E.terminalSingularitiesClosed
    (And.intro E.kltConditionClosed E.minimalModelProgramClosed)

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse