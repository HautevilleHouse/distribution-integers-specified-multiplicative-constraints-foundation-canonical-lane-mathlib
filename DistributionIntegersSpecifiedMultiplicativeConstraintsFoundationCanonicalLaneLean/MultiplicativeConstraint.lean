import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundation

structure MultiplicativeConstraintPackage where
  constraintType : Type u
  constraintFunction : ℕ → ℕ → Prop
  multiplicativeClosure : Prop
  closureWitness : multiplicativeClosure

def MultiplicativeConstraintClosed (M : MultiplicativeConstraintPackage) : Prop :=
  M.multiplicativeClosure

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundation
end HautevilleHouse