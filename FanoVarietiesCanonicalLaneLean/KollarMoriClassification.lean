import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure KollarMoriClassificationPackage where
  canonicalBundle : CanonicalBundlePackage
  deformationFamily : Type
  dim : Nat
  delPezzoSurface : Prop
  primeFanoThreefold : Prop
  higherGenusCurve : Prop

structure KollarMoriClassificationEvidence (K : KollarMoriClassificationPackage) where
  delPezzoSurfaceClosed : K.delPezzoSurface
  primeFanoThreefoldClosed : K.primeFanoThreefold
  higherGenusCurveClosed : K.higherGenusCurve

def KollarMoriClassificationClosed (K : KollarMoriClassificationPackage) : Prop :=
  K.delPezzoSurface ∧ K.primeFanoThreefold ∧ K.higherGenusCurve

theorem kollar_mori_classification_closed_from_evidence
    (K : KollarMoriClassificationPackage) (E : KollarMoriClassificationEvidence K) :
    KollarMoriClassificationClosed K := by
  exact And.intro E.delPezzoSurfaceClosed
    (And.intro E.primeFanoThreefoldClosed E.higherGenusCurveClosed)

end HautevilleHouse
end FanoVarietiesCanonicalLaneLean
