import canonicalLaneMathlib.AdmissibleClass
import CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MirrorSymmetryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse