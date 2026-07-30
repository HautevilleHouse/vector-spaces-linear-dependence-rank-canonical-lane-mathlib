import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure ExchangeLemmaPackage where
  vectorSpace : Type u
  field : Type v
  independentSet : Set (vectorSpace)
  spanningSet : Set (vectorSpace)
  exchangePossible : Prop
  cardinalityInequality : Prop
  basisExtension : Prop

structure ExchangeLemmaEvidence (P : ExchangeLemmaPackage) where
  exchangePossibleClosed : P.exchangePossible
  cardinalityInequalityClosed : P.cardinalityInequality
  basisExtensionClosed : P.basisExtension

def ExchangeLemmaClosed (P : ExchangeLemmaPackage) : Prop :=
  P.exchangePossible ∧ P.cardinalityInequality ∧ P.basisExtension

theorem exchange_lemma_closed_from_evidence (P : ExchangeLemmaPackage) (E : ExchangeLemmaEvidence P) :
    ExchangeLemmaClosed P := by
  exact And.intro E.exchangePossibleClosed
    (And.intro E.cardinalityInequalityClosed E.basisExtensionClosed)

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse