import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

structure KontsevichConjecturePackage where
  calabiYauThreefold : Type u
  derivedCategoryConstructed : Prop
  fukayaCategoryConstructed : Prop
  equivalenceProved : Prop
  homologicalMirrorForm : Prop

structure KontsevichConjectureEvidence (K : KontsevichConjecturePackage) where
  derivedCategoryConstructedClosed : K.derivedCategoryConstructed
  fukayaCategoryConstructedClosed : K.fukayaCategoryConstructed
  equivalenceProvedClosed : K.equivalenceProved
  homologicalMirrorFormClosed : K.homologicalMirrorForm

def KontsevichConjectureClosed (K : KontsevichConjecturePackage) : Prop :=
  K.derivedCategoryConstructed ∧ K.fukayaCategoryConstructed ∧ K.equivalenceProved ∧ K.homologicalMirrorForm

theorem kontsevich_conjecture_closed_from_evidence (K : KontsevichConjecturePackage) (E : KontsevichConjectureEvidence K) :
    KontsevichConjectureClosed K := by
  exact And.intro E.derivedCategoryConstructedClosed
    (And.intro E.fukayaCategoryConstructedClosed
      (And.intro E.equivalenceProvedClosed E.homologicalMirrorFormClosed))

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse