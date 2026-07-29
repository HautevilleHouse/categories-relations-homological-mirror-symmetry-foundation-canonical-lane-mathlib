import canonicalLaneMathlib.AdmissibleClass
import CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean.BridgeLemmas
import CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

def ConstrainedMirrorSymmetryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mirror_symmetry_endgame (A : AdmissibleClass) :
    ConstrainedMirrorSymmetryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse