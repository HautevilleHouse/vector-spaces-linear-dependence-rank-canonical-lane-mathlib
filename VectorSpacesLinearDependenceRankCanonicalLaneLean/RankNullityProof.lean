import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure RankNullityPackage (F : Type u) [Field F] (V : Type v) [AddCommGroup V] [Module F V] (W : Submodule F V) where
  rank : ℕ
  nullity : ℕ
  rankPlusNullityEqDimension : rank + nullity = (Module.rank F V).toNat
  dimVFinite : FiniteDimensional F V

theorem rankNullityClosed (F : Type u) [Field F] (V : Type v) [AddCommGroup V] [Module F V] [FiniteDimensional F V] (W : Submodule F V) :
  ∃ (p : RankNullityPackage F V W), p.rank + p.nullity = (Module.rank F V).toNat := by
  refine ⟨{
    rank := (Module.rank F W).toNat
    nullity := (Module.rank F (V ⧸ W)).toNat
    rankPlusNullityEqDimension := ?_
    dimVFinite := inferInstance
  }, ?_⟩
  · exact FiniteDimensional.finrank_add_finrank W
  · rfl

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse