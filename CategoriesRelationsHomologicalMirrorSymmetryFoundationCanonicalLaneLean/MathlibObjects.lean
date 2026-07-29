import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CalabiYauSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier
  kahlerMetric : RiemannianMetric carrier
  chernClasses : Nat → H²(carrier, ℤ)

structure MirrorPair where
  aSide : CalabiYauSpace
  bSide : CalabiYauSpace
  mirrorSymmetry : Prop
  derivedEquivalence : Prop
  hochnschildHomologyIso : Prop

structure HomologicalMirrorAdmittedObject where
  space : CalabiYauSpace
  fukayaCategory : Prop
  dgCategory : Prop
  derivedCategory : Prop
  homologicalMirrorConjecture : Prop
  conclusion : mirrorSymmetry

def MirrorWitnessClosed (O : HomologicalMirrorAdmittedObject) : Prop :=
  O.mirrorSymmetry

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse