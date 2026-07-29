import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure CanonicalBundlePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  canonicalBundle : Type v
  ampleCondition : Prop
  kodairaDimension : Prop
  antiCanonicalLineBundle : Prop
  fanoIndex : Nat
  picardRank : Nat

structure CanonicalBundleEvidence (C : CanonicalBundlePackage) where
  ampleConditionClosed : C.ampleCondition
  kodairaDimensionClosed : C.kodairaDimension
  antiCanonicalLineBundleClosed : C.antiCanonicalLineBundle
  fanoIndexPositive : C.fanoIndex > 0

end HautevilleHouse
end FanoVarietiesCanonicalLaneLean
