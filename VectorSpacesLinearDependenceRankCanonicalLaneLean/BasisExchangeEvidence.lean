import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure BasisExchangePackage (F : Type u) [Field F] (V : Type v) [AddCommGroup V] [Module F V] (S T : Finset V) where
  basisS : Basis F (Subtype fun x : S => True) V
  basisT : Basis F (Subtype fun x : T => True) V
  equivalenceExists : Finset.card S = Finset.card T
  cardinalCondition : Finset.card S = Finset.card T

theorem basisExchangeClosed (F : Type u) [Field F] (V : Type v) [AddCommGroup V] [Module F V] (S T : Finset V) (hS : Basis F (Subtype fun x : S => True) V) (hT : Basis F (Subtype fun x : T => True) V) : Finset.card S = Finset.card T := by
  sorry

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse