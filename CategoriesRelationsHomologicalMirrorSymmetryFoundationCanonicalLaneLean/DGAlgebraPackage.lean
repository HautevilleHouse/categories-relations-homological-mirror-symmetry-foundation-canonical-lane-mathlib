import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

structure DGAlgebraPackage where
  underlyingChainComplex : Type u
  product : Type v
  unit : Type w
  associativityCondition : Prop
  unitCondition : Prop
  derivationCondition : Prop

structure DGAlgebraEvidence (D : DGAlgebraPackage) where
  associativityConditionClosed : D.associativityCondition
  unitConditionClosed : D.unitCondition
  derivationConditionClosed : D.derivationCondition

def DGAlgebraClosed (D : DGAlgebraPackage) : Prop :=
  D.associativityCondition ∧ D.unitCondition ∧ D.derivationCondition

theorem dg_algebra_closed_from_evidence (D : DGAlgebraPackage) (E : DGAlgebraEvidence D) :
    DGAlgebraClosed D := by
  exact And.intro E.associativityConditionClosed
    (And.intro E.unitConditionClosed E.derivationConditionClosed)

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse