import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

structure FukayaCategoryPackage where
  symplecticManifold : Type u
  lagrangianSubmanifolds : Type v
  morphismSpaces : Type w
  compositionMap : Type x
  aInfinityStructure : Prop
  lagrangianIntersectionFloerDefined : Prop
  compositionAssociativeUpToHomotopy : Prop

structure FukayaCategoryEvidence (F : FukayaCategoryPackage) where
  aInfinityStructureClosed : F.aInfinityStructure
  lagrangianIntersectionFloerDefinedClosed : F.lagrangianIntersectionFloerDefined
  compositionAssociativeUpToHomotopyClosed : F.compositionAssociativeUpToHomotopy

def FukayaCategoryClosed (F : FukayaCategoryPackage) : Prop :=
  F.aInfinityStructure ∧ F.lagrangianIntersectionFloerDefined ∧ F.compositionAssociativeUpToHomotopy

theorem fukaya_category_closed_from_evidence (F : FukayaCategoryPackage) (E : FukayaCategoryEvidence F) :
    FukayaCategoryClosed F := by
  exact And.intro E.aInfinityStructureClosed (And.intro E.lagrangianIntersectionFloerDefinedClosed E.compositionAssociativeUpToHomotopyClosed)

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse