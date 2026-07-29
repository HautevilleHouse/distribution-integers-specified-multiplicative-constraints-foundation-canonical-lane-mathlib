import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersMultiplicativeConstraints

/-!
# Factorisation Closure Constraints Package

This module records the factorisation closure constraints for integers under
specified multiplicative conditions. The constraints ensure that factorisation
structures are closed under admissible operations.
-/

structure FactorisationClosurePackage {A : Type} {D : DistributionSemiring A}
    (P : DistributionSemiringPackage A D) where
  factorisationMap : A → A → A
  closureCondition : Prop
  closureConditionClosed : closureCondition
  remainderBound : A
  remainderBoundPos : remainderBound ≠ D.zero

structure FactorisationClosureEvidence {A : Type} {D : DistributionSemiring A}
    {P : DistributionSemiringPackage A D}
    (F : FactorisationClosurePackage P) where
  closureConditionClosed : F.closureCondition
  remainderBoundNonzero : F.remainderBound ≠ D.zero

def FactorisationClosureClosed {A : Type} {D : DistributionSemiring A}
    {P : DistributionSemiringPackage A D}
    (F : FactorisationClosurePackage P) : Prop :=
  F.closureCondition ∧ F.remainderBound ≠ D.zero

theorem factorisation_closure_closed_from_evidence
    {A : Type} {D : DistributionSemiring A}
    {P : DistributionSemiringPackage A D}
    (F : FactorisationClosurePackage P)
    (E : FactorisationClosureEvidence F) : FactorisationClosureClosed F := by
  exact And.intro E.closureConditionClosed E.remainderBoundNonzero

end DistributionIntegersMultiplicativeConstraints
end HautevilleHouse
