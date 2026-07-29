import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure AnticanonicalBundlePackage (X : FanoVarietyPackage) where
  lineBundle : Type u
  positivityCondition : Prop
  ampleness : Prop
  positivityConditionTerm : positivityCondition
  amplenessTerm : ampleness

structure AnticanonicalBundleEvidence {X : FanoVarietyPackage} (A : AnticanonicalBundlePackage X) where
  positivityConditionClosed : A.positivityCondition
  amplenessClosed : A.ampleness

def AnticanonicalBundleClosed {X : FanoVarietyPackage} (A : AnticanonicalBundlePackage X) : Prop :=
  A.positivityCondition ∧ A.ampleness

theorem anticanonical_bundle_closed_from_evidence
    {X : FanoVarietyPackage} (A : AnticanonicalBundlePackage X)
    (E : AnticanonicalBundleEvidence A) : AnticanonicalBundleClosed A := by
  exact And.intro E.positivityConditionClosed E.amplenessClosed

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse