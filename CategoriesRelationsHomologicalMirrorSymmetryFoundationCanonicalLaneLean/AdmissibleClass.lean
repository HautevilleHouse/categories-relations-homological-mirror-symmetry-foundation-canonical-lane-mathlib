import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : HomologicalMirrorObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MirrorSymmetryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse