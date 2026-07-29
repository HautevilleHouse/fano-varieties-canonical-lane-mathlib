import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure FanoVarietyPackage where
  variety : Type u
  topology : TopologicalSpace variety
  smoothStructure : Type v
  dimension : Nat
  dimensionThree : dimension = 3 := by decide
  projectiveCondition : Prop
  projectiveConditionTerm : projectiveCondition

def FanoVarietyWitnessClosed (X : FanoVarietyPackage) : Prop :=
  X.projectiveCondition

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse