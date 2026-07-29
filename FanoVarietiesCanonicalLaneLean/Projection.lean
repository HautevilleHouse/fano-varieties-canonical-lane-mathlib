import FanoVarietiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def fanoProjection : Projection FanoEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem fano_projection_idempotent (x : FanoEndgameState) :
    fanoProjection.toFun (fanoProjection.toFun x) = fanoProjection.toFun x := by
  exact fanoProjection.idempotent x

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse