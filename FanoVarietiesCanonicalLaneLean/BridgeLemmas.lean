import FanoVarietiesCanonicalLaneLean.FanoVarietiesAdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FanoWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse