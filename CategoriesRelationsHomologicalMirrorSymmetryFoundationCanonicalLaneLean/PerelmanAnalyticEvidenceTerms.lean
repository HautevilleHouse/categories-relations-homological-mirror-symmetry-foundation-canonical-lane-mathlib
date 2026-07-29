import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean

structure CalabiYauEvidenceTerms {G : CalabiYauStructure} (C : CalabiYauCertificate G) where
  complexStructureIntegrable : C.complexStructureIntegrable
  kahlerMetricPositive : C.kahlerMetricPositive
  chernClassesComputed : C.chernClassesComputed
  topologicalConstraints : C.topologicalConstraints
  calabiYauClosed : CalabiYauClosed G

def CalabiYauCertificate.evidenceTerms {G : CalabiYauStructure} (C : CalabiYauCertificate G) : CalabiYauEvidenceTerms C :=
  { complexStructureIntegrable := C.complexStructureIntegrableClosed
    kahlerMetricPositive := C.kahlerMetricPositiveClosed
    chernClassesComputed := C.chernClassesComputedClosed
    topologicalConstraints := C.topologicalConstraintsClosed
    calabiYauClosed := calabi_yau_closed_from_evidence G C.calabiYauEvidence
  }

structure FukayaCategoryEvidenceTerms {G : CalabiYauStructure} {F : FukayaCategoryPackage G} (C : FukayaCategoryCertificate F) where
  lagrangianSubmanifolds : C.lagrangianSubmanifolds
  floerComplexDefined : C.floerComplexDefined
  productStructure : C.productStructure
  homotopyEquivalence : C.homotopyEquivalence
  fukayaClosed : FukayaCategoryClosed F

def FukayaCategoryCertificate.evidenceTerms {G : CalabiYauStructure} {F : FukayaCategoryPackage G} (C : FukayaCategoryCertificate F) : FukayaCategoryEvidenceTerms C :=
  { lagrangianSubmanifolds := C.lagrangianSubmanifoldsClosed
    floerComplexDefined := C.floerComplexDefinedClosed
    productStructure := C.productStructureClosed
    homotopyEquivalence := C.homotopyEquivalenceClosed
    fukayaClosed := fukaya_category_closed_from_evidence F C.fukayaEvidence
  }

structure MirrorEquivalenceEvidenceTerms {G : CalabiYauStructure} {F : FukayaCategoryPackage G} {D : DerivedCategoryPackage G} (C : MirrorEquivalenceCertificate F D) where
  derivedEquivalence : C.derivedEquivalence
  homologyMatching : C.homologyMatching
  mirrorClosed : MirrorEquivalenceClosed F D

def MirrorEquivalenceCertificate.evidenceTerms {G : CalabiYauStructure} {F : FukayaCategoryPackage G} {D : DerivedCategoryPackage G} (C : MirrorEquivalenceCertificate F D) : MirrorEquivalenceEvidenceTerms C :=
  { derivedEquivalence := C.derivedEquivalenceClosed
    homologyMatching := C.homologyMatchingClosed
    mirrorClosed := mirror_equivalence_closed_from_evidence F D C.mirrorEvidence
  }

end CategoriesRelationsHomologicalMirrorSymmetryFoundationCanonicalLaneLean
end HautevilleHouse