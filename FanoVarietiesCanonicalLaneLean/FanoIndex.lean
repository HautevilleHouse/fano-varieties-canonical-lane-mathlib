import FanoVarietiesCanonicalLaneLean.MinimalModelProgram

/-!
# Fano Index Package
-/

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure FanoIndexPackage {A : AnticanonicalBundlePackage} (V : FanoSpace) where
  index : ℕ
  indexPositivity : index > 0
  relationToAnticanonical : Prop
  indexBoundedByDimension : Prop

structure FanoIndexEvidence {A : AnticanonicalBundlePackage} {V : FanoSpace} (FI : FanoIndexPackage A V) where
  relationToAnticanonicalClosed : FI.relationToAnticanonical
  indexBoundedByDimensionClosed : FI.indexBoundedByDimension

def FanoIndexClosed {A : AnticanonicalBundlePackage} {V : FanoSpace} (FI : FanoIndexPackage A V) : Prop :=
  FI.relationToAnticanonical ∧ FI.indexBoundedByDimension

theorem fano_index_closed_from_evidence {A : AnticanonicalBundlePackage} {V : FanoSpace}
    (FI : FanoIndexPackage A V) (E : FanoIndexEvidence FI) : FanoIndexClosed FI := by
  exact And.intro E.relationToAnticanonicalClosed E.indexBoundedByDimensionClosed

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse