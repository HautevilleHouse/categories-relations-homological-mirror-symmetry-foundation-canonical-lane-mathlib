import CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean.FukayaCategory

/-!
# Mirror Symmetry Equivalence Package
-/

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

structure MirrorSymmetryEquivalencePackage (F : FukayaCategoryPackage) where
  dgCategory : Type u
  coherentCategory : Type v
  equivalencePair : Type w
  fullyFaithful : Prop
  essentiallySurjective : Prop

structure MirrorSymmetryEquivalenceEvidence {F : FukayaCategoryPackage}
    (M : MirrorSymmetryEquivalencePackage F) where
  fullyFaithfulClosed : M.fullyFaithful
  essentiallySurjectiveClosed : M.essentiallySurjective

def MirrorSymmetryEquivalenceClosed {F : FukayaCategoryPackage}
    (M : MirrorSymmetryEquivalencePackage F) : Prop :=
  M.fullyFaithful ∧ M.essentiallySurjective

theorem mirror_symmetry_equivalence_closed_from_evidence
    {F : FukayaCategoryPackage} (M : MirrorSymmetryEquivalencePackage F)
    (E : MirrorSymmetryEquivalenceEvidence M) : MirrorSymmetryEquivalenceClosed M := by
  exact And.intro E.fullyFaithfulClosed E.essentiallySurjectiveClosed

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse