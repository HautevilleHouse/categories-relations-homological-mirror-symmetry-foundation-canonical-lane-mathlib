import CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean.FukayaCategory

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

structure MirrorSymmetryCorrespondencePackage
    {F : FukayaCategoryPackage} (D : DerivedCategoryPackage F) where
  mirrorMap : Type u
  equivalenceOfCategories : Prop
  hodgeTheoreticCompatibility : Prop
  enumerativePrediction : Prop

structure MirrorSymmetryCorrespondenceEvidence
    {F : FukayaCategoryPackage} {D : DerivedCategoryPackage F}
    (M : MirrorSymmetryCorrespondencePackage D) where
  equivalenceOfCategoriesClosed : M.equivalenceOfCategories
  hodgeTheoreticCompatibilityClosed : M.hodgeTheoreticCompatibility
  enumerativePredictionClosed : M.enumerativePrediction

def MirrorSymmetryCorrespondenceClosed
    {F : FukayaCategoryPackage} {D : DerivedCategoryPackage F}
    (M : MirrorSymmetryCorrespondencePackage D) : Prop :=
  M.equivalenceOfCategories ∧ M.hodgeTheoreticCompatibility ∧ M.enumerativePrediction

theorem mirror_symmetry_correspondence_closed_from_evidence
    {F : FukayaCategoryPackage} {D : DerivedCategoryPackage F}
    (M : MirrorSymmetryCorrespondencePackage D)
    (E : MirrorSymmetryCorrespondenceEvidence M) :
    MirrorSymmetryCorrespondenceClosed M := by
  exact And.intro E.equivalenceOfCategoriesClosed
    (And.intro E.hodgeTheoreticCompatibilityClosed E.enumerativePredictionClosed)

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse