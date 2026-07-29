import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure MinimalModelPackage {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    {B : BirationalGeometryPackage A} where
  existsMinimalModel : Prop
  terminationOfFlips : Prop
  abundanceConjecture : Prop
  existsMinimalModelTerm : existsMinimalModel
  terminationOfFlipsTerm : terminationOfFlips
  abundanceConjectureTerm : abundanceConjecture

structure MinimalModelEvidence {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    {B : BirationalGeometryPackage A} (M : MinimalModelPackage B) where
  existsMinimalModelClosed : M.existsMinimalModel
  terminationOfFlipsClosed : M.terminationOfFlips
  abundanceConjectureClosed : M.abundanceConjecture

def MinimalModelClosed {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    {B : BirationalGeometryPackage A} (M : MinimalModelPackage B) : Prop :=
  M.existsMinimalModel ∧ M.terminationOfFlips ∧ M.abundanceConjecture

theorem minimal_model_closed_from_evidence
    {X : FanoVarietyPackage} {A : AnticanonicalBundlePackage X}
    {B : BirationalGeometryPackage A} (M : MinimalModelPackage B)
    (E : MinimalModelEvidence M) : MinimalModelClosed M := by
  exact And.intro E.existsMinimalModelClosed
    (And.intro E.terminationOfFlipsClosed E.abundanceConjectureClosed)

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse