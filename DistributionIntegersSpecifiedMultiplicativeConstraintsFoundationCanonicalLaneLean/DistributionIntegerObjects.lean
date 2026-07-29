import canonicalLaneMathlib.AdmissibleClass
import Mathlib.NumberTheory.ArithmeticFunction
import Mathlib.Data.Nat.Multiplicative

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean

structure DistributionIntegerSpace where
  carrier : Type
  structure : Type

structure DistributionIntegerAdmittedObject where
  space : DistributionIntegerSpace
  multiplicativeConstraint : ℕ → ℕ
  boundedDivisorProperty : Prop
  endDistribution : ℕ → ℝ
  conclusion : endDistribution = λ n => 0

structure DistributionIntegerEndgameState where
  object : DistributionIntegerAdmittedObject

def DistributionIntegerWitnessClosed (O : DistributionIntegerAdmittedObject) : Prop :=
  O.endDistribution = λ n => 0

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean
end HautevilleHouse
