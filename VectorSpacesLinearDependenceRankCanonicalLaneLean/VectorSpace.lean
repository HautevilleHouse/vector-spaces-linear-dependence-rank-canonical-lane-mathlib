import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure VectorSpace (F : Type u) [Field F] where
  carrier : Type v
  add : carrier → carrier → carrier
  smul : F → carrier → carrier
  zero : carrier
  add_assoc : ∀ (a b c : carrier), add (add a b) c = add a (add b c)
  add_comm : ∀ (a b : carrier), add a b = add b a
  zero_add : ∀ (a : carrier), add zero a = a
  add_left_neg : ∀ (a : carrier), ∃ b : carrier, add a b = zero
  smul_add : ∀ (r : F) (a b : carrier), smul r (add a b) = add (smul r a) (smul r b)
  add_smul : ∀ (r s : F) (a : carrier), smul (r + s) a = add (smul r a) (smul s a)
  mul_smul : ∀ (r s : F) (a : carrier), smul (r * s) a = smul r (smul s a)
  smul_one : ∀ (a : carrier), smul 1 a = a

structure LinearDependence (F : Type u) [Field F] (V : VectorSpace F) where
  vectors : List (V.carrier)
  weights : List F
  nonempty_weights : ∃ i, weights.get? i ≠ some 0
  combination_zero : LinearCombination F V vectors weights = V.zero

structure SpanningSet (F : Type u) [Field F] (V : VectorSpace F) where
  vectors : List (V.carrier)
  spans : ∀ (v : V.carrier), ∃ (coeffs : List F), LinearCombination F V vectors coeffs = v

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse
