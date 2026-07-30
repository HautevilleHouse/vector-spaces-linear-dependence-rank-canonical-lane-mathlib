import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorSpacesLinearDependenceRankCanonicalLaneLean.VectorSpace

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure LinearMap (F : Type u) [Field F] (V W : VectorSpace F) where
  f : V.carrier → W.carrier
  additive : ∀ (x y : V.carrier), f (V.add x y) = W.add (f x) (f y)
  homogeneous : ∀ (r : F) (x : V.carrier), f (V.smul r x) = W.smul r (f x)

structure Kernel (F : Type u) [Field F] (V W : VectorSpace F) (T : LinearMap F V W) where
  vectors : {v : V.carrier | T.f v = W.zero}
  subspace : Subspace F V vectors

structure Image (F : Type u) [Field F] (V W : VectorSpace F) (T : LinearMap F V W) where
  vectors : {w : W.carrier | ∃ (v : V.carrier), T.f v = w}
  subspace : Subspace F W vectors

structure RankNullity (F : Type u) [Field F] (V W : VectorSpace F) (T : LinearMap F V W) where
  rank : ℕ
  nullity : ℕ
  rank_nullity_eq : rank + nullity = dim V

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse
