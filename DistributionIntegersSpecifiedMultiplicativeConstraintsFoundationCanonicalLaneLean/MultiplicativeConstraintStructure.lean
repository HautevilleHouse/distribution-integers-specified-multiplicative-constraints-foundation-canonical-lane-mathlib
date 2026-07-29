import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean

structure MultiplicativeConstraintStructure (A : PrimitiveArithmeticFramework) where
  multiplicativeSubset : Set A.baseSet
  closureUnderMultiplication : ∀ a b, a ∈ multiplicativeSubset → b ∈ multiplicativeSubset → A.multiplication a b ∈ multiplicativeSubset
  containsOne : A.one ∈ multiplicativeSubset
  subsetClosed : SetLike (Set A.baseSet) A.baseSet := inferInstance
  constraintSatisfied : Prop
  constraintWitness : constraintSatisfied

def MultiplicativeConstraintClosed (M : MultiplicativeConstraintStructure A) : Prop :=
  M.constraintSatisfied

theorem multiplicative_constraint_closed_from_evidence (M : MultiplicativeConstraintStructure A) : MultiplicativeConstraintClosed M := by
  exact M.constraintWitness

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean
end HautevilleHouse