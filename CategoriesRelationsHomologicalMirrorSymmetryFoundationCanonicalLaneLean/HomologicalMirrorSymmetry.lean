import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

structure HomologicalMirrorSymmetryTheorem where
  symplecticSide : FukayaCategoryPackage
  algebraicSide : DerivedCategory AInfinityAlgebraPackage
  equivalence : Functor symplecticSide.fukaya (derivedCategory algebraicSide.aInfinityAlgebra)
  isEquivalence : Prop

structure HMSpackage where
  theorem : HomologicalMirrorSymmetryTheorem
  proofData : Prop

structure HMSEvidence (P : HMSpackage) where
  equivalenceIsEquivalence : P.theorem.isEquivalence
  proofDataClosed : P.proofData

def HMSclosed (P : HMSpackage) : Prop := P.theorem.isEquivalence ∧ P.proofData

theorem hms_closed_from_evidence (P : HMSpackage) (E : HMSEvidence P) : HMSclosed P := by
  exact And.intro E.equivalenceIsEquivalence E.proofDataClosed

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse