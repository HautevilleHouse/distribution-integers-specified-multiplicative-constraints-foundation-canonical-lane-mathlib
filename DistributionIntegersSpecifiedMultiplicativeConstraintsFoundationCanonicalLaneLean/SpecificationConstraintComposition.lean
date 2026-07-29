import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean

structure SpecificationConstraintComposition (M : MultiplicativeConstraintStructure) where
  specConstraintMorphism : Type u
  compositionLaw : Prop
  identitySpec : Prop
  associativitySpec : Prop
  compositionLawTerm : compositionLaw
  identitySpecTerm : identitySpec
  associativitySpecTerm : associativitySpec

structure SpecificationConstraintCompositionEvidence {M : MultiplicativeConstraintStructure} (C : SpecificationConstraintComposition M) where
  compositionLawClosed : C.compositionLaw
  identitySpecClosed : C.identitySpec
  associativitySpecClosed : C.associativitySpec

def SpecificationConstraintCompositionClosed {M : MultiplicativeConstraintStructure} (C : SpecificationConstraintComposition M) : Prop :=
  C.compositionLaw ∧ C.identitySpec ∧ C.associativitySpec

theorem specification_constraint_composition_closed {M : MultiplicativeConstraintStructure} (C : SpecificationConstraintComposition M) (E : SpecificationConstraintCompositionEvidence C) : SpecificationConstraintCompositionClosed C :=
  And.intro E.compositionLawClosed (And.intro E.identitySpecClosed E.associativitySpecClosed)

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean
end HautevilleHouse
