import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure FanoVariety where
  carrier : Type u
  topology : TopologicalSpace carrier
  sheaf : carrier → Type v
  ampleCanonicalBundle : Prop
  kltSingularities : Prop
  dimension : Nat
  index : Nat

def FanoVariety.anticanonicalClass (X : FanoVariety) : Type u := sorry

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse