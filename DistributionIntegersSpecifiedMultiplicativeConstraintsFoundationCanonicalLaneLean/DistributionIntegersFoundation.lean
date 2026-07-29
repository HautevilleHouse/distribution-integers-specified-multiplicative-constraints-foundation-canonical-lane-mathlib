import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean

structure DistributionIntegersFoundation (A : PrimitiveArithmeticFramework) where
  integerSubset : Set A.baseSet
  additionCompatible : ∀ a b, a ∈ integerSubset → b ∈ integerSubset → A.addition a b ∈ integerSubset
  multiplicationCompatible : ∀ a b, a ∈ integerSubset → b ∈ integerSubset → A.multiplication a b ∈ integerSubset
  additiveInverseCompatible : ∀ a, a ∈ integerSubset → A.additiveInverse a ∈ integerSubset
  zeroInSubset : A.zero ∈ integerSubset
  oneInSubset : A.one ∈ integerSubset
  distributionProperty : Prop
  distributionWitness : distributionProperty

def DistributionIntClosed (D : DistributionIntegersFoundation A) : Prop :=
  D.distributionProperty

theorem distribution_int_closed_from_evidence (D : DistributionIntegersFoundation A) : DistributionIntClosed D := by
  exact D.distributionWitness

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean
end HautevilleHouse