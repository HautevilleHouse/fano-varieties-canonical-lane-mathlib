import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure BoundednessFamilyPackage where
  dimensionFixed : Prop
  volumeBoundedAbove : Prop
  hilbertPolynomialsFinite : Prop
  deformationOpenness : Prop

structure BoundednessFamilyEvidence (B : BoundednessFamilyPackage) where
  dimensionFixedClosed : B.dimensionFixed
  volumeBoundedAboveClosed : B.volumeBoundedAbove
  hilbertPolynomialsFiniteClosed : B.hilbertPolynomialsFinite
  deformationOpennessClosed : B.deformationOpenness

def BoundednessFamilyClosed (B : BoundednessFamilyPackage) : Prop :=
  B.dimensionFixed ∧ B.volumeBoundedAbove ∧ B.hilbertPolynomialsFinite ∧ B.deformationOpenness

theorem boundedness_family_closed_from_evidence (B : BoundednessFamilyPackage) (E : BoundednessFamilyEvidence B) :
    BoundednessFamilyClosed B := by
  exact And.intro E.dimensionFixedClosed
    (And.intro E.volumeBoundedAboveClosed
      (And.intro E.hilbertPolynomialsFiniteClosed E.deformationOpennessClosed))

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse