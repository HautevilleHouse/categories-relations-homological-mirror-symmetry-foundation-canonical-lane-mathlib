import CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean.HomologicalAlgebraicStructure

/-!
# Homological Mirror Object Package
-/

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MirrorSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HomologicalMirrorObject where
  space : MirrorSpace
  calabiYau : Prop
  boundedDerivedCategory : Type
  derivedEquivalence : Prop
  conclusion : derivedEquivalence

def MirrorSymmetryWitnessClosed (O : HomologicalMirrorObject) : Prop :=
  O.derivedEquivalence

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse