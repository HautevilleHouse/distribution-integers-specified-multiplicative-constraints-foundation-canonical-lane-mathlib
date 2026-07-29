import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean

structure PrimitiveArithmeticFramework where
  baseSet : Type u
  addition : baseSet → baseSet → baseSet
  multiplication : baseSet → baseSet → baseSet
  zero : baseSet
  one : baseSet
  additiveIdentity : ∀ x : baseSet, addition x zero = x
  multiplicativeIdentity : ∀ x : baseSet, multiplication x one = x
  additiveInverse : baseSet → baseSet
  multiplicativeInverse : baseSet → baseSet
  additiveInverseProperty : ∀ x : baseSet, addition x (additiveInverse x) = zero
  multiplicativeInverseProperty : ∀ x : baseSet, x ≠ zero → multiplication x (multiplicativeInverse x) = one
  distributive : ∀ x y z : baseSet, multiplication x (addition y z) = addition (multiplication x y) (multiplication x z)

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean
end HautevilleHouse