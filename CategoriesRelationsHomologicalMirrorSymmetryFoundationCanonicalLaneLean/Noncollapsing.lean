import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

structure NoncollapsingPackage {G : CalabiYauStructure} {F : FukayaCategoryPackage G} (H : HomologicalMirrorPairingPackage F) where
  volumeBound : Prop
  curvatureControl : Prop
  gromovHausdorffLimitNoncollapsed : Prop

structure NoncollapsingEvidence {G : CalabiYauStructure} {F : FukayaCategoryPackage G} {H : HomologicalMirrorPairingPackage F} (N : NoncollapsingPackage H) where
  volumeBoundClosed : N.volumeBound
  curvatureControlClosed : N.curvatureControl
  gromovHausdorffLimitNoncollapsedClosed : N.gromovHausdorffLimitNoncollapsed

def NoncollapsingClosed {G : CalabiYauStructure} {F : FukayaCategoryPackage G} {H : HomologicalMirrorPairingPackage F} (N : NoncollapsingPackage H) : Prop :=
  N.volumeBound ∧ N.curvatureControl ∧ N.gromovHausdorffLimitNoncollapsed

theorem noncollapsing_closed_from_evidence {G : CalabiYauStructure} {F : FukayaCategoryPackage G} {H : HomologicalMirrorPairingPackage F} (N : NoncollapsingPackage H) (E : NoncollapsingEvidence N) : NoncollapsingClosed N := by
  exact And.intro E.volumeBoundClosed (And.intro E.curvatureControlClosed E.gromovHausdorffLimitNoncollapsedClosed)

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse