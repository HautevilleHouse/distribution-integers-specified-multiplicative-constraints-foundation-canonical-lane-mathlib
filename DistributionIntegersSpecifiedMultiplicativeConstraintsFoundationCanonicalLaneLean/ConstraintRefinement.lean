import canonicalLaneMathlib.AdmissibleClass
import DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean.MultiplicativeConstraintPackage

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean

structure ConstraintRefinementPackage {M : MultiplicativeConstraintPackage} where
  refinedModulus : ℕ
  refinedLowerBound : ℕ
  refinedUpperBound : ℕ
  refinementRelation : Prop
  refinementClosure : Prop
  refinementClosureTerm : refinementClosure

structure ConstraintRefinementEvidence {M : MultiplicativeConstraintPackage}
    (R : ConstraintRefinementPackage M) where
  refinedModulusDivides : M.modulus % R.refinedModulus = 0
  boundContainment : M.exponentLowerBound ≤ R.refinedLowerBound ∧ R.refinedUpperBound ≤ M.exponentUpperBound
  refinementRelationClosed : R.refinementRelation
  refinementClosureClosed : R.refinementClosure

def ConstraintRefinementClosed {M : MultiplicativeConstraintPackage}
    (R : ConstraintRefinementPackage M) : Prop :=
  R.refinementClosure

theorem constraint_refinement_closed_from_evidence
    {M : MultiplicativeConstraintPackage} (R : ConstraintRefinementPackage M)
    (E : ConstraintRefinementEvidence R) : ConstraintRefinementClosed R := by
  exact E.refinementClosureClosed

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean
end HautevilleHouse