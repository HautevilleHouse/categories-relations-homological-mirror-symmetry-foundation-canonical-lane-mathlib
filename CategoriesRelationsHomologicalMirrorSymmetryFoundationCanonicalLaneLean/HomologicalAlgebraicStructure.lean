import CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean.MirrorSymmetryEquivalence

/-!
# Homological Algebraic Structure Package
-/

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

structure HomologicalAlgebraicStructurePackage where
  derivedCategory : Type u
  tStructure : Prop
  heartAbelian : Prop
  perverseTStructure : Prop

structure HomologicalAlgebraicStructureEvidence
    (H : HomologicalAlgebraicStructurePackage) where
  tStructureClosed : H.tStructure
  heartAbelianClosed : H.heartAbelian
  perverseTStructureClosed : H.perverseTStructure

def HomologicalAlgebraicStructureClosed
    (H : HomologicalAlgebraicStructurePackage) : Prop :=
  H.tStructure ∧ H.heartAbelian ∧ H.perverseTStructure

theorem homological_algebraic_structure_closed_from_evidence
    (H : HomologicalAlgebraicStructurePackage)
    (E : HomologicalAlgebraicStructureEvidence H) : HomologicalAlgebraicStructureClosed H := by
  exact And.intro E.tStructureClosed (And.intro E.heartAbelianClosed E.perverseTStructureClosed)

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse